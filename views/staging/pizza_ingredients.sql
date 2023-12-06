WITH split_ingredients AS (
    SELECT
        pizza_type_id,
        UNNEST(STRING_SPLIT(ingredients, ', ')) AS ingredient_name
    FROM
        raw.pizza_types
)
SELECT
    pizza_type_id,
    ingredient_name
FROM
    split_ingredients