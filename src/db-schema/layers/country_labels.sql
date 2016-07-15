CREATE OR REPLACE VIEW country_labels_z3 AS (
    SELECT geom, sr_subunit,
           sr_adm0_a3
    FROM ne_10m_admin_0_label_points
    ORDER BY scalerank DESC
);
