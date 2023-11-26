with orders_data as (

    select
        ro.order_id,
        rod.pizza_id,
        ro."datetime",
        rod.quantity
    from raw.orders ro
    join raw.order_details rod
    using (order_id)

)

select 
    orders_data.order_id,
    raw.pizze.pizza_type_id,
    raw.pizze.size,
    orders_data.quantity,
    orders_data.datetime
from orders_data
join raw.pizze
using (pizza_id)

