FROM debian:jessie
ENV IMPORT_DATA_DIR=/import \
    NATURAL_EARTH_2_TIFF=/import/NE2_HR_LC.tif \
    NATURAL_EARTH_2_MBTILES=/export/natural_earth_2.mbtiles

RUN apt-get update && apt-get install -y --no-install-recommends \
      wget \
      unzip \
      gdal-bin \
      sqlite3 \
 && rm -rf /var/lib/apt/lists/*

RUN wget --quiet http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/raster/NE2_HR_LC.zip \
    && unzip -oj NE2_HR_LC.zip -d "$IMPORT_DATA_DIR" \
    && rm NE2_HR_LC.zip

COPY . /usr/src/app
WORKDIR /usr/src/app
CMD ["./tile_natural_earth.sh"]
