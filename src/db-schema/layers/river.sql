CREATE OR REPLACE VIEW river_z3 AS (
    SELECT geom, NULL::int AS scalerank, name FROM ne_110m_rivers_lake_centerlines
    WHERE featurecla = 'River'
);

CREATE OR REPLACE VIEW river_z4 AS (
    SELECT geom, NULL::int AS scalerank, name FROM ne_50m_rivers_lake_centerlines
    WHERE featurecla = 'River'
);

CREATE OR REPLACE VIEW river_z5 AS (
    SELECT geom, scalerank, name FROM ne_10m_rivers_lake_centerlines
    WHERE featurecla = 'River'
);
