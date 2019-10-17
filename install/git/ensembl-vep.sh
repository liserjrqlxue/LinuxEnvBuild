#!/bin/bash
pkgname=ensembl-vep
pkgauthor=Ensembl
pkgtype=github

source=github.com/${pkgauthor}/${pkgname}
go get -v $source
cd $(go env GOPATH)/src/$source

# cpanm Archive::Zip 
# cpanm DBI
# cpanm DBD::mysql
# cpanm Set::IntervalTree
# cpanm JSON
# cpanm PerlIO::gzip
# update htslib
perl INSTALL.pl --NO_HTSLIB
