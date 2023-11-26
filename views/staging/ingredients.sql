SELECT 
    -- @UNIQUE
    DISTINCT ingredient AS name
FROM raw.pizza_types,
LATERAL (
    SELECT UNNEST(STRING_SPLIT(ingredients, ', ')) AS ingredient
);