#!/usr/bin/env bash

# credit: https://xeiaso.net/blog/iaso-fonts/
# deps: fonttool

mkdir -p dist/IosevkaMilad/WOFF2-Subset

for x in $(ls dist/IosevkaMilad/TTF/*.ttf); do
	new_name="dist/IosevkaMilad/WOFF2-Subset/$(basename "$x" .ttf).woff2"

	pyftsubset \
    "$x" \
    --output-file="$new_name" \
    --flavor=woff2 \
    --layout-features=* \
    --no-hinting \
    --desubroutinize \
    --unicodes="U+0000-00A0,U+00A2-00A9,U+00AC-00AE,U+00B0-00B7,\
      U+00B9-00BA,U+00BC-00BE,U+00D7,U+00F7,U+2000-206F,U+2074,\
      U+20AC,U+2122,U+2190-21BB,U+2212,U+2215,U+F8FF,U+FEFF,\
      U+FFFD"
done


