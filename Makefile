.PHONY: all

all: export-vectortiles db-schema

export-vectortiles:
	docker build -t lukasmartinelli/natural-earth-vector-tiles:export-vectortiles src/export-vectortiles

db-schema:
	docker build -t lukasmartinelli/natural-earth-vector-tiles:db-schema src/db-schema
