SELECT
    pizza_type_id,
    name,
    category,
    size,
    price
FROM
    raw.pizzas
    JOIN raw.pizza_types USING (pizza_type_id)