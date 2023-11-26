SELECT
    'n_orders' AS metric,
    COUNT(*) AS value
FROM
    staging.orders

UNION ALL

SELECT
    'accepted_orders' AS metric,
    COUNT(*) AS value
FROM
    staging.orders so
JOIN
    staging.pizze rp
ON 
    so.pizza_type_id = rp.pizza_type_id
WHERE
	rp.pizza_type_id <> 'hawaiian';

