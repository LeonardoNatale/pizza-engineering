WITH orders_data AS (
    SELECT
        order_id,
        pizza_id,
        datetime,
        quantity
    FROM
        pizze.raw__orders
        JOIN pizze.raw__order_details USING (order_id)
)
SELECT
    order_id,
    pizza_type_id,
    size,
    quantity,
    datetime
FROM
    orders_data
    JOIN pizze.raw__pizzas USING (pizza_id)