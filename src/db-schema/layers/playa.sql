CREATE OR REPLACE VIEW playa_z3 AS (
    SELECT geom, name
    FROM ne_50m_playas
);

CREATE OR REPLACE VIEW playa_z5 AS (
    SELECT geom, name
    FROM ne_10m_playas
);
