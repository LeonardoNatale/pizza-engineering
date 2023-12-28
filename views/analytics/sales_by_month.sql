SELECT
    FORMAT_TIMESTAMP('%B', datetime) AS MONTH,
    SUM(quantity * price) AS total_sales
FROM
    pizze.pizza_police__orders
    JOIN pizze.pizza_police__pizze USING (pizza_type_id)
GROUP BY
    MONTH
ORDER BY
    total_sales DESC;