WITH split_ingredients AS (
    SELECT
        pizza_type_id,
        UNNEST(STRING_SPLIT(ingredients, ', ')) AS ingredient_name
    FROM
        raw.pizza_types
)
SELECT
    split_ingredients.pizza_type_id,
    split_ingredients.ingredient_name
FROM
    split_ingredients