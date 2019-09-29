#!/bin/bash
pkgname=App-perlbrew
pkgauthor=gugod
pkgtype=github

source=github.com/{$pkgauthor}/${pkgname}
go get ${source}
cd $(go env GOPATH)/src/${source}

LOCALINSTALLER=perlbrew

echo
echo "## Installing perlbrew"

# loop thru available well known Perl installations
for PERL in "/usr/bin/perl" "/usr/local/bin/perl"
do
    [ -x "$PERL" ] && echo "Using Perl <$PERL>" && break
done

if [ ! -x "$PERL" ]; then
  echo "Need /usr/bin/perl or /usr/local/bin/perl to use $0"
  exit 2
fi

[ ! -x $LOCALINSTALLER ] && chmod +x $LOCALINSTALLER
$PERL $LOCALINSTALLER self-install || exit 3

echo "## Installing patchperl"
$PERL $LOCALINSTALLER -f -q install-patchperl || exit 4

echo
echo "## Done."
