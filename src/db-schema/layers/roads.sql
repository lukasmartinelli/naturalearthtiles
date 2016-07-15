CREATE OR REPLACE VIEW ne_10m_global_roads AS (
    SELECT geom, scalerank FROM ne_10m_roads WHERE continent <> 'North America'
    UNION ALL
    SELECT geom, scalerank FROM ne_10m_roads_north_america
);

CREATE OR REPLACE VIEW roads_z4 AS (
    SELECT geom
    FROM ne_10m_global_roads
    WHERE scalerank <= 4
);

CREATE OR REPLACE VIEW roads_z5 AS (
    SELECT geom
    FROM ne_10m_global_roads
    WHERE scalerank <= 5
);

CREATE OR REPLACE VIEW roads_z6 AS (
    SELECT geom
    FROM ne_10m_global_roads
    WHERE scalerank <= 6
);

CREATE OR REPLACE VIEW roads_z7_z14 AS (
    SELECT geom
    FROM ne_10m_global_roads
    WHERE scalerank = 7
);
