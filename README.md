#  Introduction

*Gene Set Enrichment Analysis* (GSEA) is a computational method that determines whether an a priori defined set of genes shows statistically significant, concordant differences between two biological states (e.g. phenotypes).  See the [GSEA website](http://www.gsea-msigdb.org) for more details.

The Chip2Chip module for GenePattern is a tool from the [GSEA Desktop](https://github.com/GSEA-MSigDB/gsea-desktop) used to translate the gene identifiers in a gene set database (GMT/GMX) from HUGO symbols to the probe identifiers for a selected CHIP file (e.g. from Affymetrix microarrays).  It has been wrapped in a form suitable for [GenePattern](http://www.genepattern.org/), allowing it to be run on the GenePattern servers in a batch setting using a web UI, with no client installation. 

This module has never had a Production release.  It is part of the GSEA test suite and was designed exclusively with that in mind.  While it has been tested extensively for that use it has never been evaluated for any other purpose.

# License

The Chip2Chip module for GenePattern is made available under the terms of a BSD-style license, a copy of which is included in the distribution in the [LICENSE.txt](LICENSE.txt) file.  See that file for exact terms and conditions.

The module relies upon the GSEA Desktop code base.  See the [GSEA Desktop GitHub repository](https://github.com/GSEA-MSigDB/gsea-desktop) for information about its license.

#  Latest Version

No public binary releases of this software are available at this time; building from source is necessary for its use. 

If you have any comments, suggestions or bugs to report, please see our [Contact page](http://www.gsea-msigdb.org/gsea/contact.jsp) for information on how to reach us.

# History and Acknowledgments

The **GSEA Desktop application version 1.0** was developed by Aravind Subramanian as part of his PhD thesis.  The work was supported by the Broad Institute of MIT and Harvard and advised by Jill Mesirov, Pablo Tamayo, Vamsi Mootha, Sayan Mukherjee, Todd Golub and Eric Lander.  See the README in the [GSEA Desktop GitHub repository](https://github.com/GSEA-MSigDB/gsea-desktop) for further history of the GSEA Desktop and list of additional contributors.

**The GSEA Chip2Chip module for GenePattern** is based on the open-source GSEA Desktop code base; the initial GitHub commit corresponds to the code base as of August 7, 2017. The earlier code revision history is not available.

David Eby was responsible for the open-source conversion of the GSEA Desktop and the GSEA modules and handles current maintenance and new feature development.  While David is listed on the initial commit to this public GitHub repository, original authorship is due to the individuals listed in the GSEA history regardless of the GitHub history metadata.

The GSEA project is currently a joint effort of the Broad Institute and the University of California San Diego, and funded by the National Cancer Institute of the National Institutes of Health (PI: JP Mesirov).

# Dependencies

The Chip2Chip module for GenePattern is 100% Pure Java.  Java 11 is required for our pre-built binaries.  Builds against other versions of Java may be possible but are unsupported.

See the [LICENSE-3RD-PARTY.txt](LICENSE-3RD-PARTY.txt) file for a list of the module's library dependencies.  The module wraps the GSEA Desktop; see the [GitHub repository](https://github.com/GSEA-MSigDB/gsea-desktop) for its dependencies.

------
Copyright (c) 2003-2019 Broad Institute, Inc., Massachusetts Institute of Technology, and Regents of the University of California.  All rights reserved.
