# staging

## Table of contents

- [staging.orders](#staging.orders)
- [staging.pizza_ingredients](#staging.pizza_ingredients)
- [staging.pizzas](#staging.pizzas)

## Views

### staging.orders

```sql
SELECT *
FROM staging.orders
```

| Column        | Type           | Description   | Unique   |
|:--------------|:---------------|:--------------|:---------|
| datetime      | `TIMESTAMP_NS` |               |          |
| order_id      | `BIGINT`       |               |          |
| pizza_type_id | `VARCHAR`      |               |          |
| quantity      | `BIGINT`       |               |          |
| size          | `VARCHAR`      |               |          |

### staging.pizza_ingredients

```sql
SELECT *
FROM staging.pizza_ingredients
```

| Column          | Type      | Description   | Unique   |
|:----------------|:----------|:--------------|:---------|
| ingredient_name | `VARCHAR` |               |          |
| pizza_type_id   | `VARCHAR` |               |          |

### staging.pizzas

```sql
SELECT *
FROM staging.pizzas
```

| Column        | Type      | Description   | Unique   |
|:--------------|:----------|:--------------|:---------|
| category      | `VARCHAR` |               |          |
| name          | `VARCHAR` |               |          |
| pizza_type_id | `VARCHAR` |               |          |
| price         | `DOUBLE`  |               |          |
| size          | `VARCHAR` |               |          |

