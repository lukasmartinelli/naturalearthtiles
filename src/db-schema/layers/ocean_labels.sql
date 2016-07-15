CREATE OR REPLACE VIEW ocean_labels_z3 AS (
    SELECT * FROM ne_10m_land_ocean_label_points
    WHERE scalerank <= 1
);

CREATE OR REPLACE VIEW ocean_labels_z4 AS (
    SELECT * FROM ne_10m_land_ocean_label_points
    WHERE scalerank <= 2
);

CREATE OR REPLACE VIEW ocean_labels_z5 AS (
    SELECT * FROM ne_10m_land_ocean_label_points
    WHERE scalerank <= 3
);

CREATE OR REPLACE VIEW ocean_labels_z6 AS (
    SELECT * FROM ne_10m_land_ocean_label_points
    WHERE scalerank <= 4
);

CREATE OR REPLACE VIEW ocean_labels_z7 AS (
    SELECT * FROM ne_10m_land_ocean_label_points
);
