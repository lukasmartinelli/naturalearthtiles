CREATE OR REPLACE VIEW geographic_lines_z2 AS (
    SELECT * FROM ne_110m_geographic_lines
);

CREATE OR REPLACE VIEW geographic_lines_z3 AS (
    SELECT * FROM ne_50m_geographic_lines
);

CREATE OR REPLACE VIEW geographic_lines_z5 AS (
    SELECT * FROM ne_110m_geographic_lines
);
