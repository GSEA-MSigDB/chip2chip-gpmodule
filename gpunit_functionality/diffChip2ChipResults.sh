# Copyright (c) 2003-2017 Broad Institute, Inc., Massachusetts Institute of Technology, and Regents of the University of California.  All rights reserved.
#!/bin/sh
execDir=`dirname $0`

base1=`basename $1`
base2=`basename $2`
diffDir1=`mktemp -d $base1.XXXXXX`
diffDir2=`mktemp -d $base2.XXXXXX`

# The generated GMT/GMX files sometimes have a different order when there are multiple GMT inputs.
# This should probably be changed in the long run, but for now we just compare the sorted outputs
sort $1 > $diffDir1/sorted.matrix
sort $2 > $diffDir2/sorted.matrix

diff -i --strip-trailing-cr -q $diffDir1/sorted.matrix $diffDir2/sorted.matrix
status=$?

rm -rf $diffDir1 $diffDir2
exit $status
