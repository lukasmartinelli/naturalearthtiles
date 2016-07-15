FROM lukasmartinelli/natural-earth-postgis

ENV TEOW_SHP_FILE="$IMPORT_DATA_DIR/wwf_terr_ecos.shp"

RUN rm -rf "$IMPORT_DATA_DIR/**" \
 && wget --quiet http://assets.worldwildlife.org/publications/15/files/original/official_teow.zip \
 && unzip -oj official_teow.zip -d "$IMPORT_DATA_DIR" \
 && rm official_teow.zip

WORKDIR /usr/src/app
COPY . /usr/src/app
CMD ["/usr/src/app/import_wwf.sh"]
