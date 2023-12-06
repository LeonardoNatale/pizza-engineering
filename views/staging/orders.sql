WITH orders_data AS (
    SELECT
        order_id,
        pizza_id,
        datetime,
        quantity
    FROM
        raw.orders
        JOIN raw.order_details USING (order_id)
)
SELECT
    order_id,
    pizza_type_id,
    size,
    quantity,
    datetime
FROM
    orders_data
    JOIN raw.pizzas USING (pizza_id)