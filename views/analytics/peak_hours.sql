SELECT
    EXTRACT(
        HOUR
        FROM
            datetime
    ) AS hour,
    COUNT(*) AS order_count
FROM
    pizze.pizza_police__orders
GROUP BY
    hour
ORDER BY
    order_count DESC;