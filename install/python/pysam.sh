#!/bin/bash
pkgname=pysam

# update htslib
export HTSLIB_LIBRARY_DIR=$LOCAL/lib
export HTSLIB_INCLUDE_DIR=$LOCAL/include
pip install $pkgname

