#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

function transform_natural_earth_2() {
    echo "Transform Natural Earth 2 to Raster Tiles"

    ogr2ogr \
    -progress \
    -clipsrc -180.1 -85.0511 180.1 85.0511 \
    -f "MBTILES"
    "$NATURAL_EARTH_2_TIFF" "$NATURAL_EARTH_2_MBTILES"
}

transform_natural_earth_2
