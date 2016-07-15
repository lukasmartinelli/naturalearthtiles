CREATE OR REPLACE VIEW country_label_z3 AS (
    SELECT geom,
           sr_subunit AS name,
           sr_adm0_a3 AS abbreviation,
           scalerank
    FROM ne_10m_admin_0_label_points
    WHERE scalerank = 0
);

CREATE OR REPLACE VIEW country_label_z5 AS (
    SELECT geom,
           sr_subunit AS name,
           sr_adm0_a3 AS abbreviation,
           scalerank
    FROM ne_10m_admin_0_label_points
    WHERE scalerank <= 1
);
