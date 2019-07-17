# Copyright (c) 2003-2017 Broad Institute, Inc., Massachusetts Institute of Technology, and Regents of the University of California.  All rights reserved.
#!/bin/sh
execDir=`dirname $0`

zip1=$1
zip2=$2

base1=`basename $1`
base2=`basename $2`
bare1=${base1%%.zip}
bare2=${base2%%.zip}
diffDir1=`mktemp -d $bare1.XXXXXX`
diffDir2=`mktemp -d $bare2.XXXXXX`

unzip -q $zip1 -d $diffDir1
unzip -q $zip2 -d $diffDir2

# The generated GMT/GMX files sometimes have a different order when there are multiple GMT inputs.
# This should probably be changed in the long run, but for now we just compare the sorted outputs
sort $diffDir1/*.gm? > $diffDir1/sorted.matrix
sort $diffDir2/*.gm? > $diffDir2/sorted.matrix

diff -i --strip-trailing-cr -q $diffDir1/sorted.matrix $diffDir2/sorted.matrix
status=$?

# Likewise for the XLS file
sort $diffDir1/*.xls > $diffDir1/sorted.xls
sort $diffDir2/*.xls > $diffDir2/sorted.xls

diff -i --strip-trailing-cr -q $diffDir1/sorted.xls $diffDir2/sorted.xls
status=$(( $? + status ))

# Checking etiology TXT report files.  We're working out of diffDir1 as that is from the 'expected' result.
txtFileList=$diffDir1/*.txt
for txtFile in $txtFileList; do
   baseTxtFile=`basename $txtFile`
   if [ -s $diffDir2/$baseTxtFile ]; then
      diff -i --strip-trailing-cr -q $txtFile $diffDir2/$baseTxtFile
      status=$(( $? + status ))
   else
      status=$(( 1 + status ))
   fi
done

rm -rf $diffDir1 $diffDir2
exit $status
