SELECT
    "name",
    sum(quantity) AS total
FROM
    pizza_police.orders
    JOIN pizza_police.pizze USING (pizza_type_id)
GROUP BY
    "name"
ORDER BY
    total DESC
LIMIT
    10;