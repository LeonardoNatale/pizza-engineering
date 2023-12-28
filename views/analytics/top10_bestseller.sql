SELECT
    name,
    sum(quantity) AS total
FROM
    pizze.pizza_police__orders
    JOIN pizze.pizza_police__pizze USING (pizza_type_id)
GROUP BY
    name
ORDER BY
    total DESC
LIMIT
    10;