.PHONY: all

all: export-vectortiles db-schema import-wwf

export-vectortiles:
	docker build -t lukasmartinelli/natural-earth-vector-tiles:export-vectortiles src/export-vectortiles

db-schema:
	docker build -t lukasmartinelli/natural-earth-vector-tiles:db-schema src/db-schema

import-wwf:
	docker build -t lukasmartinelli/natural-earth-vector-tiles:import-wwf src/import-wwf
