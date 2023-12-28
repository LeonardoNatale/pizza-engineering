SELECT
    'avg_orders_per_day' AS metric,
    CAST(
        ROUND(COUNT(DISTINCT order_id) / 365, 2) AS STRING
    ) AS value
FROM
    pizze.pizza_police__orders
UNION
ALL
SELECT
    'average_pizze_per_order' AS metric,
    CAST(ROUND(AVG(sum_quantity), 2) AS STRING) AS value
FROM
    (
        SELECT
            sum(quantity) AS sum_quantity
        FROM
            pizze.pizza_police__orders
        GROUP BY
            order_id
    )
UNION
ALL
SELECT
    'total_sales' AS metric,
    CONCAT(
        CAST(ROUND(SUM(quantity * price)) AS STRING),
        ' $'
    ) AS value
FROM
    pizze.pizza_police__orders
    JOIN pizze.pizza_police__pizze USING (pizza_type_id)