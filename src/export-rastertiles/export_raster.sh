#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

readonly PROJECT_DIR="/tm2source"
readonly EXPORT_DIR="/export"
readonly RENDER_SCHEME=${RENDER_SCHEME:-pyramid}
readonly MIN_ZOOM=${MIN_ZOOM:-0}
readonly MAX_ZOOM=${MAX_ZOOM:-7}
readonly BBOX=${BBOX:-"-180 -85.0511 180 85.0511"}

function export_natural_earth_2() {
    echo "Export Natural Earth 2 to Raster Tiles"

    exec tl copy \
        -s pyramid \
        -b "$BBOX" \
        --min-zoom="$MIN_ZOOM" \
        --max-zoom="$MAX_ZOOM" \
        "tmsource://$PROJECT_DIR" "mbtiles://$NATURAL_EARTH_2_MBTILES"
}

export_natural_earth_2
