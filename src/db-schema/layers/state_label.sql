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
