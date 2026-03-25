WITH waarden AS (
    SELECT 5.0 AS getal1, 30.0 AS getal2, '/' AS operator
)

SELECT
    CASE operator
        WHEN '+' THEN getal1 + getal2
        WHEN '-' THEN getal1 - getal2
        WHEN '*' THEN getal1 * getal2
        WHEN '/' THEN 
            CASE 
                WHEN getal2 = 0 THEN 0
                ELSE getal1 / getal2
            END
        ELSE 0
    END AS resultaat
FROM waarden;