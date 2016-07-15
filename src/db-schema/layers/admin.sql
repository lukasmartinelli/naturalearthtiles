CREATE OR REPLACE FUNCTION admin_class(featureclass VARCHAR) RETURNS VARCHAR
AS $$
BEGIN
    RETURN CASE
        WHEN featureclass ILIKE 'line of control%' THEN 'control'
        WHEN featureclass ILIKE 'disputed%' THEN 'dispute'
        WHEN featureclass ILIKE 'lease%' THEN 'lease'
        WHEN featureclass ILIKE 'overlay%' THEN 'overlay'
        ELSE 'boundary'
    END;
END;
$$ LANGUAGE plpgsql IMMUTABLE;

CREATE OR REPLACE VIEW admin_z2 AS (
    SELECT geom,
           0 AS admin_level, scalerank,
           admin_class(featurecla) AS class
    FROM ne_110m_admin_0_boundary_lines_land
);

CREATE OR REPLACE VIEW admin_z3 AS (
    SELECT geom, 0 AS admin_level, scalerank,
           admin_class(featurecla) AS class
    FROM ne_50m_admin_0_boundary_lines_land
    UNION ALL
    SELECT geom, 1 AS admin_level, scalerank,
           admin_class(featurecla) AS class
    FROM ne_50m_admin_1_states_provinces_lines
);

CREATE OR REPLACE VIEW admin_z5 AS (
    SELECT geom, 0 AS admin_level, scalerank,
           admin_class(featurecla) AS class
    FROM ne_10m_admin_0_boundary_lines_land
    UNION ALL
    SELECT geom, 1 AS admin_level, scalerank,
           admin_class(featurecla) AS class
    FROM ne_10m_admin_1_states_provinces_lines_shp
    WHERE scalerank <= 7
);

CREATE OR REPLACE VIEW admin_z7 AS (
    SELECT geom, 0 AS admin_level, scalerank,
           admin_class(featurecla) AS class
    FROM ne_10m_admin_0_boundary_lines_land
    UNION ALL
    SELECT geom, 1 AS admin_level, scalerank,
           admin_class(featurecla) AS class
    FROM ne_10m_admin_1_states_provinces_lines_shp
);
