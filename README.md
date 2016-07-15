# Natural Earth Vector Tiles [![BSD-3 and ODbL licensed](https://img.shields.io/badge/license-BSD--3/ODbL-blue.svg)](https://github.com/osm2vectortiles/osm2vectortiles#license) [![Build Status](https://travis-ci.org/lukasmartinelli/natural-earth-vector-tiles.svg?branch=master)](https://travis-ci.org/lukasmartinelli/natural-earth-vector-tiles)
Prerendered [Natural Earth](http://naturalearthdata.com/) vector tiles encoded in the [Mapbox vector tile specification](https://github.com/mapbox/vector-tile-spec) for use with Mapbox GL or other clients.
*Currently in heavy development*

[**:open_file_folder: Download the vector tiles from the releases page**](https://github.com/lukasmartinelli/natural-earth-vector-tiles/releases/latest).

![Mapbox GL visualization of Natural Earth vector tiles](demo.gif)

Please also checkout our project to [create vector tiles from Open Street Map](http://osm2vectortiles.org).

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

Start up the PostGIS database. This will automatically import the Natural Earth
data set (can take up to 6 minutes).

```bash
docker-compose up natural-earth-postgis
```

Import the required database schema and helper functions.

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

## License

The produced vector tiles are licensed under the [Open Database License](http://wiki.openstreetmap.org/wiki/Open_Database_License)
and are made with data originating from [Natural Earth](http://www.naturalearthdata.com/).

The source code is Copyright (c) Lukas Martinelli under BSD-3 as defined in [License](LICENSE).
The vector data source in `src/vector-data-source` is partially derived from [mapbox/natural-earth-tm2](https://github.com/mapbox/natural-earth-tm2) and therefore retains Copyright (c) Mapbox under BSD-3 as defined in [License](src/vector-data-source/LICENSE.md).
