CREATE OR REPLACE VIEW marine_label_z2 AS (
    SELECT geom, name, scalerank, featurecla AS type
    FROM ne_110m_geography_marine_polys
);

CREATE OR REPLACE VIEW marine_label_z5 AS (
    SELECT geom, name, scalerank, featurecla AS type
    FROM ne_50m_geography_marine_polys
);

CREATE OR REPLACE VIEW marine_label_z7 AS (
    SELECT geom, name, scalerank, featurecla AS type
    FROM ne_10m_geography_marine_polys
);
