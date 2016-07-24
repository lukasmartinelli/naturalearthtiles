DROP TABLE IF EXISTS country_label CASCADE;
CREATE TABLE country_label AS (
    SELECT topoint(geom) AS geom,
           name,
           adm0_a3, abbrev,
           scalerank, labelrank,
           CASE WHEN tiny < 0 THEN 0 ELSE 1 END AS is_tiny
    FROM ne_10m_admin_0_countries
    WHERE scalerank <= 1
);
CREATE INDEX country_label_geom_idx ON country_label USING gist(geom);

CREATE OR REPLACE VIEW country_label_z2 AS (
    SELECT * FROM country_label WHERE scalerank = 0 AND is_tiny = 0
);

CREATE OR REPLACE VIEW country_label_z5 AS (
    SELECT * FROM country_label WHERE scalerank <= 1
);
