CREATE OR REPLACE FUNCTION fix_win1252_shp_encoding(str TEXT) RETURNS TEXT
AS $$
BEGIN
    RETURN convert_from(convert_to(str, 'WIN1252'), 'UTF-8');
    EXCEPTION WHEN others THEN RETURN str;
END;
$$ LANGUAGE plpgsql IMMUTABLE;

UPDATE ne_10m_admin_1_states_provinces_shp
SET name=fix_win1252_shp_encoding(name);

UPDATE ne_50m_admin_1_states_provinces_shp
SET name=fix_win1252_shp_encoding(name);

CREATE OR REPLACE VIEW state_label_z3 AS (
    SELECT geom, name, scalerank, labelrank, postal
    FROM ne_50m_admin_1_states_provinces_shp
);

CREATE OR REPLACE VIEW state_label_z5 AS (
    SELECT geom, name, scalerank, labelrank, postal
    FROM ne_10m_admin_1_states_provinces_shp
    WHERE scalerank <= 6
);

CREATE OR REPLACE VIEW state_label_z7 AS (
    SELECT geom, name, scalerank, labelrank, postal
    FROM ne_10m_admin_1_states_provinces_shp
);
