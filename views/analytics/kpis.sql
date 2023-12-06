SELECT
    'avg_orders_per_day' AS metric,
    round(count(DISTINCT order_id) / 365, 2) AS value
FROM
    pizza_police.orders
UNION
SELECT
    'average_pizze_per_order' AS metric,
    round(AVG(sum_quantity), 2) AS value
FROM
    (
        SELECT
            sum(quantity) AS sum_quantity
        FROM
            pizza_police.orders
        GROUP BY
            order_id
    ) AS sum_per_order
UNION
SELECT
    'total_sales' AS metric,
    FORMAT(
        '{:,} $',
        CAST(ROUND(SUM(quantity * price)) AS BIGINT)
    ) AS value,
FROM
    pizza_police.orders
    JOIN pizza_police.pizze USING (pizza_type_id)