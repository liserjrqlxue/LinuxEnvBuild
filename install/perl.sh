#!/bin/bash
pkgname=perl
pkgver=5.30.0

perlbrew init
perlbrew install --switch -j 6 --thread --no-patchperl stable || perlbrew install --switch -j 6 --notest --thread --no-patchperl stable
#perlbrew install ${pkgname}-${pkgver}
