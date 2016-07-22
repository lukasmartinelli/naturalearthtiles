DROP TABLE IF EXISTS country_label CASCADE;
CREATE TABLE country_label AS (
    SELECT DISTINCT on (nec.adm0_a3)
    nel.geom,
    nec.name, nec.iso_a3, nec.abbrev, 
    nel.scalerank, nec.labelrank
    FROM ne_10m_admin_0_countries AS nec 
    INNER JOIN ne_10m_admin_0_label_points AS nel
    ON nec.adm0_a3 = nel.sr_adm0_a3 AND nel.scalerank <= 1
);
CREATE INDEX country_label_geom_idx ON country_label USING gist(geom);

CREATE OR REPLACE VIEW country_label_z3 AS (
    SELECT *
    FROM country_label
    WHERE scalerank = 0
);

CREATE OR REPLACE VIEW country_label_z5 AS (
    SELECT *
    FROM country_label
    WHERE scalerank <= 1
);
