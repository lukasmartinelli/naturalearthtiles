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
    exec_psql_file "layers/railroads.sql"
    exec_psql_file "layers/roads.sql"
    exec_psql_file "layers/country_labels.sql"
}

main
