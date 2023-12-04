SELECT
    EXTRACT(
        HOUR
        FROM
            datetime
    ) AS "hour",
    COUNT(*) AS order_count
FROM
    pizza_police.orders
GROUP BY
    "hour"
ORDER BY
    order_count DESC;