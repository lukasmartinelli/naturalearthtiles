CREATE OR REPLACE VIEW railroads_z5 AS (
    SELECT geom
    FROM ne_10m_railroads
    WHERE scalerank <= 5
);

CREATE OR REPLACE VIEW railroads_z6 AS (
    SELECT geom
    FROM ne_10m_railroads
    WHERE scalerank <= 6
);

CREATE OR REPLACE VIEW railroads_z7_z14 AS (
    SELECT geom
    FROM ne_10m_railroads
    WHERE scalerank = 7
);
