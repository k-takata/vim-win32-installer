#!/bin/sh

VIMSRC=$1

cd $VIMSRC/lang

rm -f LICENSE.*.nsis.txt

for i in LICENSE.*.txt ../LICENSE; do
  # Convert to UTF-8 with BOM
  LC_ALL=C sed -e $'1s/^/\xef\xbb\xbf/' $i > $(basename $i .txt).nsis.txt
done
