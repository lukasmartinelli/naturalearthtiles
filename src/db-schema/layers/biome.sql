CREATE OR REPLACE FUNCTION biome_type(biome INTEGER) RETURNS VARCHAR
AS $$
BEGIN
    RETURN CASE
		WHEN biome = 1 THEN 'Tropical & Subtropical Moist Broadleaf Forests'
		WHEN biome = 2 THEN 'Tropical & Subtropical Dry Broadleaf Forests'
		WHEN biome = 3 THEN 'Tropical & Subtropical Coniferous Forests'
		WHEN biome = 4 THEN 'Temperate Broadleaf & Mixed Forests'
		WHEN biome = 5 THEN 'Temperate Conifer Forests'
		WHEN biome = 6 THEN 'Boreal Forests/Taiga'
		WHEN biome = 7 THEN 'Tropical & Subtropical Grasslands, Savannas & Shrublands'
		WHEN biome = 8 THEN 'Temperate Grasslands, Savannas & Shrublands'
		WHEN biome = 9 THEN 'Flooded Grasslands & Savannas'
		WHEN biome =10 THEN 'Montane Grasslands & Shrublands'
		WHEN biome =11 THEN 'Tundra'
		WHEN biome =12 THEN 'Mediterranean Forests, Woodlands & Scrub'
		WHEN biome =13 THEN 'Deserts & Xeric Shrublands'
		WHEN biome =14 THEN 'Mangroves'
	END;
END;
$$ LANGUAGE plpgsql IMMUTABLE;

CREATE OR REPLACE VIEW biome_z2 AS (
    SELECT geom, biome_type(biome::int) AS biome
    FROM wwf_terr_ecos
);
