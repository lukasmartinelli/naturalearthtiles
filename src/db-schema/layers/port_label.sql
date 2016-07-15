CREATE OR REPLACE VIEW port_label_z5 AS (
    SELECT * FROM ne_10m_ports
    WHERE scalerank <= 3
);

CREATE OR REPLACE VIEW port_label_z6 AS (
    SELECT * FROM ne_10m_ports
    WHERE scalerank <= 5
);

CREATE OR REPLACE VIEW port_label_z7 AS (
    SELECT * FROM ne_10m_ports
);
