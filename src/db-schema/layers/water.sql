CREATE OR REPLACE VIEW water_z0 AS (
    SELECT geom, 0 AS scalerank FROM ne_110m_ocean
    UNION ALL
    SELECT geom, scalerank FROM ne_110m_lakes
);

CREATE OR REPLACE VIEW water_z1 AS (
    SELECT geom, 0 AS scalerank FROM ne_50m_ocean
    UNION ALL
    SELECT geom, scalerank FROM ne_110m_lakes
);

CREATE OR REPLACE VIEW water_z2 AS (
    SELECT geom, 0 AS scalerank FROM ne_10m_ocean
    UNION ALL
    SELECT geom, scalerank FROM ne_50m_lakes
);

CREATE OR REPLACE VIEW water_z4 AS (
    SELECT geom, 0 AS scalerank FROM ne_10m_ocean
    UNION ALL
    SELECT geom, scalerank FROM ne_10m_lakes
);
