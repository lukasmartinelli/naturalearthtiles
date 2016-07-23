FROM lukasmartinelli/natural-earth-vector-tiles:export-vectortiles
MAINTAINER Lukas Martinelli <me@lukasmartinelli.ch>

RUN apt-get update && apt-get install -y --no-install-recommends \
      wget \
      unzip \
      gdal-bin \
 && rm -rf /var/lib/apt/lists/*

ENV IMPORT_DATA_DIR=/import \
    NATURAL_EARTH_2_TIFF=/import/NE2_HR_LC_SR.tif \
    NATURAL_EARTH_2_MBTILES=/export/natural_earth_2_raster.mbtiles

RUN wget --quiet http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/raster/NE2_HR_LC_SR.zip \
    && unzip -oj NE2_HR_LC_SR.zip -d "$IMPORT_DATA_DIR" \
    && rm NE2_HR_LC_SR.zip

VOLUME /import
COPY . /usr/src/app
CMD ["/usr/src/app/export_raster.sh"]
