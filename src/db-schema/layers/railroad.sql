CREATE OR REPLACE VIEW railroad_z5 AS (
    SELECT geom
    FROM ne_10m_railroads
    WHERE scalerank <= 5
);

CREATE OR REPLACE VIEW railroad_z6 AS (
    SELECT geom
    FROM ne_10m_railroads
    WHERE scalerank <= 6
);

CREATE OR REPLACE VIEW railroad_z7 AS (
    SELECT geom
    FROM ne_10m_railroads
    WHERE scalerank <= 7
);
