.PHONY: all

all: export-vectortiles db-schema import-wwf import-naturalearth raster-datasource

export-vectortiles:
	docker build -t naturalearthtiles/export-vectortiles src/export-vectortiles

db-schema:
	docker build -t naturalearthtiles/db-schema src/db-schema

import-wwf:
	docker build -t naturalearthtiles/import-wwf src/import-wwf

import-naturalearth:
	docker build -t naturalearthtiles/import-naturalearth src/import-naturalearth

raster-datasource:
	docker build -t naturalearthtiles/raster-datasource src/raster-datasource
