SELECT
    *
FROM
    pizze.staging__orders so
WHERE
    NOT EXISTS (
        SELECT
            1
        FROM
            pizze.staging__pizza_ingredients pi
        WHERE
            pi.pizza_type_id = so.pizza_type_id
            AND pi.ingredient_name IN (
                'Alfredo Sauce',
                'Barbecued Chicken',
                'Chicken',
                'Chipotle Sauce',
                'Pineapple',
                'Thai Sweet Chilli Sauce'
            )
    );