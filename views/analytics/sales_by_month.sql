SELECT
    monthname(datetime) AS MONTH,
    SUM(quantity * price) AS total_sales
FROM
    pizza_police.orders
    JOIN pizza_police.pizze USING (pizza_type_id)
GROUP BY
    MONTH
ORDER BY
    total_sales DESC;