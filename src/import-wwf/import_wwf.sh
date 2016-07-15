#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

readonly NE_DB=${NE_DB:-naturalearth}
readonly NE_USER=${NE_USER:-naturalearth}
readonly NE_PASSWORD=${NE_PASSWORD:-naturalearth}

function import_wwf() {
    echo "Importing WWF TEOW data into PostGIS"
    PGCLIENTENCODING=LATIN1 ogr2ogr \
    -progress \
    -f Postgresql \
    -t_srs EPSG:3857 \
    -clipsrc -180.1 -85.0511 180.1 85.0511 \
    PG:"host=postgres dbname=$NE_DB user=$NE_USER password=$NE_PASSWORD"\
    -lco GEOMETRY_NAME=geom \
    -nlt MULTIPOLYGON \
    -dim 2 \
    -overwrite \
    "$TEOW_SHP_FILE"
}

import_wwf
