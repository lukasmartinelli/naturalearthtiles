#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

function exec_psql_file() {
    local file_name="$1"
    PG_PASSWORD="naturalearth" psql \
        -v ON_ERROR_STOP=1 \
        --host="postgres" \
        --port=5432 \
        --dbname="naturalearth" \
        --username="naturalearth" \
        -f "$file_name"
}

function main() {
    exec_psql_file "$VT_UTIL_DIR/postgis-vt-util.sql"
    exec_psql_file "layers/railroad.sql"
    exec_psql_file "layers/road.sql"
    exec_psql_file "layers/country_label.sql"
    exec_psql_file "layers/state_label.sql"
    exec_psql_file "layers/playa.sql"
    exec_psql_file "layers/urban.sql"
    exec_psql_file "layers/water.sql"
    exec_psql_file "layers/ice.sql"
    exec_psql_file "layers/place_label.sql"
    exec_psql_file "layers/port_label.sql"
    exec_psql_file "layers/admin.sql"
    exec_psql_file "layers/airport_label.sql"
    exec_psql_file "layers/river.sql"
    exec_psql_file "layers/marine_label.sql"
    exec_psql_file "layers/lake_label.sql"
}

main
