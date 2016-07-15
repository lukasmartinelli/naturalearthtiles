# Natural Earth Vector Tiles [![BSD-3 and ODbL licensed](https://img.shields.io/badge/license-BSD--3/ODbL-blue.svg)](https://github.com/osm2vectortiles/osm2vectortiles#license)
Natural Earth vector tile data set (MVT).
Prerendered Natural Earth vector tiles encoded in the [Mapbox vector tile specification](https://github.com/mapbox/vector-tile-spec) for use with Mapbox GL or other clients.

*Currently in heavy development*

## Download

[**Download the vector tiles from the releases page**](https://github.com/lukasmartinelli/postgis-editor/releases/latest).

You can use [**mbview**](https://github.com/mapbox/mbview) to take a look at the MBTiles vector tiles locally.

## Run Workflow

The entire project is structured components using Docker containers
to work together. Ensure you meet the prerequisites.

- Install [Docker](https://docs.docker.com/engine/installation/)
- Install [Docker Compose](https://docs.docker.com/compose/install/)

Start up the PostGIS database.

```bash
docker-compose up natural-earth-postgis
```

Import the required database schema and helper functions.

```bash
docker-compose run db-schema
```

Export the vector tiles. The exported vector tiles are stored in `data/natural_earth.mbtiles`.

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
