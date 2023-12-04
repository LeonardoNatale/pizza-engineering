WITH orders_data AS (
    SELECT
        ro.order_id,
        rod.pizza_id,
        ro.datetime,
        rod.quantity
    FROM
        raw.orders ro
        JOIN raw.order_details rod USING (order_id)
)
SELECT
    orders_data.order_id,
    rp.pizza_type_id,
    rp.size,
    orders_data.quantity,
    orders_data.datetime
FROM
    orders_data
    JOIN raw.pizze AS rp USING (pizza_id)