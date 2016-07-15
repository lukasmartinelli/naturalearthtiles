CREATE OR REPLACE VIEW airport_labels_z5 AS (
    SELECT * FROM ne_10m_airports
    WHERE scalerank <= 3
);

CREATE OR REPLACE VIEW airport_labels_z6 AS (
    SELECT * FROM ne_10m_airports
    WHERE scalerank <= 5
);

CREATE OR REPLACE VIEW airport_labels_z7 AS (
    SELECT * FROM ne_10m_airports
);
