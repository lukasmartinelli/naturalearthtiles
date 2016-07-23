CREATE OR REPLACE VIEW country_label_z3 AS (
    SELECT geom, sr_subunit AS name, scalerank, sr_adm0_a3 AS iso_3166_alpha_3
    FROM ne_10m_admin_0_label_points
    WHERE scalerank = 0
);

CREATE OR REPLACE VIEW country_label_z5 AS (
    SELECT geom, sr_subunit AS name, scalerank, sr_adm0_a3 AS iso_3166_alpha_3
    FROM ne_10m_admin_0_label_points
    WHERE scalerank <= 1
);
