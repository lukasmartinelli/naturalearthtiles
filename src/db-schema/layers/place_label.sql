CREATE OR REPLACE VIEW place_label_z3 AS (
    SELECT * FROM ne_10m_populated_places
    WHERE scalerank = 0
);

CREATE OR REPLACE VIEW place_label_z4 AS (
    SELECT * FROM ne_10m_populated_places
    WHERE scalerank <= 2
);

CREATE OR REPLACE VIEW place_label_z5 AS (
    SELECT * FROM ne_10m_populated_places
    WHERE scalerank <= 4
);

CREATE OR REPLACE VIEW place_label_z6 AS (
    SELECT * FROM ne_10m_populated_places
    WHERE scalerank <= 6
);

CREATE OR REPLACE VIEW place_label_z7 AS (
    SELECT * FROM ne_10m_populated_places
);
