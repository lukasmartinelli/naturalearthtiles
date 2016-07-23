# Natural Earth Vector Tiles [![BSD-3 and ODbL licensed](https://img.shields.io/badge/license-BSD--3/ODbL-blue.svg)](https://github.com/osm2vectortiles/osm2vectortiles#license) [![Build Status](https://travis-ci.org/lukasmartinelli/natural-earth-vector-tiles.svg?branch=master)](https://travis-ci.org/lukasmartinelli/natural-earth-vector-tiles)
Prerendered [Natural Earth](http://naturalearthdata.com/) vector tiles encoded in the [Mapbox vector tile specification](https://github.com/mapbox/vector-tile-spec) for use with Mapbox GL or other clients. Raster tiles for [Natural Earth II with shaded relief](http://www.naturalearthdata.com/downloads/10m-raster-data/10m-shaded-relief/) are included as well.

[**:open_file_folder: Download the vector and raster tiles from the releases page**](https://github.com/lukasmartinelli/natural-earth-vector-tiles/releases/latest).

Using the prerendered vector tiles and raster tiles from Natural Earth you are able to create **high quality low zoom level maps**
which are ideal for global data visualizations or as basis for your own local base map.
For high zoom level vector tiles please checkout our project to [create vector tiles from Open Street Map](http://osm2vectortiles.org).

![Mapbox GL visualization of Natural Earth vector tiles](demo.gif)

## Use Vector Tiles

You can use [**mbview**](https://github.com/mapbox/mbview) to take a look at the MBTiles vector tiles locally.
To display the vector tiles with Mapbox GL you need a tileserver.

Tileservers:
- [tessera](https://github.com/mojodna/tessera)
- [tileserver-gl-light](https://github.com/osm2vectortiles/tileserver-gl-light)
- [tileserver-gl](https://github.com/klokantech/tileserver-gl)


## Run Workflow

The entire project is structured components using Docker containers
to work together. Ensure you meet the prerequisites.

- Install [Docker](https://docs.docker.com/engine/installation/)
- Install [Docker Compose](https://docs.docker.com/compose/install/)

Start up the PostgreSQL database with the PostGIS extension.

```bash
docker-compose up -d postgres
```

Now import the Natural Earth and WWF data set (can take several minutes).

```bash
docker-compose run import-naturalearth
docker-compose run import-wwf
```

Import the required database schema (views, prepared tables and helper functions).

```bash
docker-compose run db-schema
```

Export the vector tiles for the planet (can take up to 15min).
The exported vector tiles are stored in `data/natural_earth.mbtiles`.

```bash
docker-compose run export-vectortiles
```

To visualize and work with the vector tiles you can spin up Mapbox Studio
in a Docker container and visit `localhost:3000`.

```bash
docker-compose up mapbox-studio
```

Export the raster tiles from the Natural Earth II raster data source.
The exported raster tiles are stored in `data/natural_earth_2_raster.mbtiles`.

```bash
docker-compose run export-vectortiles
```

## License

The produced tiles are licensed under the [Open Database License](http://wiki.openstreetmap.org/wiki/Open_Database_License)
and are made with data originating from [Natural Earth](http://www.naturalearthdata.com/).

The source code is Copyright (c) Lukas Martinelli under BSD-3 as defined in [License](LICENSE).
The vector data source in `src/vector-data-source` is partially derived from [mapbox/natural-earth-tm2](https://github.com/mapbox/natural-earth-tm2) and therefore retains Copyright (c) Mapbox under BSD-3 as defined in [License](src/vector-data-source/LICENSE.md).
