SELECT
    *
FROM
    staging.pizzas sp
WHERE
    NOT EXISTS (
        SELECT
            1
        FROM
            staging.pizza_ingredients pi
        WHERE
            pi.pizza_type_id = sp.pizza_type_id
            AND pi.ingredient_name IN (
                'Alfredo Sauce',
                'Barbecued Chicken',
                'Chicken',
                'Chipotle Sauce',
                'Pineapple',
                'Thai Sweet Chilli Sauce'
            )
    );