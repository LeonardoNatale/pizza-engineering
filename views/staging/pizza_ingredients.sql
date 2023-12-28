WITH split_ingredients AS (
    SELECT
        pizza_type_id,
        ingredient
    FROM
        pizze.raw__pizza_types,
        UNNEST(SPLIT(ingredients, ', ')) AS ingredient
)
SELECT
    pizza_type_id,
    ingredient AS ingredient_name
FROM
    split_ingredients