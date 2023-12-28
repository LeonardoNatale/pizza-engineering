SELECT
    pizza_type_id,
    name,
    category,
    size,
    price
FROM
    pizze.raw__pizzas
    JOIN pizze.raw__pizza_types USING (pizza_type_id)