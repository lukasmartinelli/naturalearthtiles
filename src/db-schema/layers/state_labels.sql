CREATE OR REPLACE VIEW state_labels_z3 AS (
    SELECT geom, name, scalerank
    FROM ne_50m_admin_1_states_provinces_shp
);

CREATE OR REPLACE VIEW state_labels_z5 AS (
    SELECT geom, name, scalerank
    FROM ne_10m_admin_1_states_provinces_shp
    WHERE scalerank <= 6
);

CREATE OR REPLACE VIEW state_labels_z7 AS (
    SELECT geom, name, scalerank
    FROM ne_10m_admin_1_states_provinces_shp
);
