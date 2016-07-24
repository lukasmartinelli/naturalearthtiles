FROM debian:jessie
MAINTAINER Lukas Martinelli <me@lukasmartinelli.ch>

WORKDIR /projects/raster-datasource.tm2source
RUN apt-get update && apt-get install -y --no-install-recommends \
      wget \
      unzip \
 && rm -rf /var/lib/apt/lists/*

# Natural Earth 2
RUN wget --quiet http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/raster/NE2_HR_LC.zip \
    && unzip -oj NE2_HR_LC.zip -d "/projects/raster-datasource.tm2source" \
    && rm NE2_HR_LC.zip

RUN wget --quiet http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/raster/NE2_HR_LC_SR.zip \
    && unzip -oj NE2_HR_LC_SR.zip -d "/projects/raster-datasource.tm2source" \
    && rm NE2_HR_LC_SR.zip

# Download Cross-blended Hypsometric Tints
RUN wget --quiet http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/raster/HYP_HR.zip \
    && unzip -oj HYP_HR.zip -d "/projects/raster-datasource.tm2source" \
    && rm HYP_HR.zip

RUN wget --quiet http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/raster/HYP_HR_SR.zip \
    && unzip -oj HYP_HR_SR.zip -d "/projects/raster-datasource.tm2source" \
    && rm HYP_HR_SR.zip

# Shaded Relief
RUN wget --quiet http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/raster/SR_HR.zip \
    && unzip -oj SR_HR.zip -d "/projects/raster-datasource.tm2source" \
    && rm SR_HR.zip

# Gray Earth
RUN wget --quiet http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/raster/GRAY_HR_SR.zip \
    && unzip -oj GRAY_HR_SR.zip -d "/projects/raster-datasource.tm2source" \
    && rm GRAY_HR_SR.zip

VOLUME /projects/raster-datasource.tm2source
COPY ./data.yml /projects/raster-datasource.tm2source
CMD ["/bin/true"]
