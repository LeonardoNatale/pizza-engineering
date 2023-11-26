# staging

## Table of contents

- [staging.ingredients](#staging.ingredients)
- [staging.orders](#staging.orders)
- [staging.pizza_ingredients](#staging.pizza_ingredients)
- [staging.pizza_types](#staging.pizza_types)
- [staging.pizze](#staging.pizze)

## Views

### staging.ingredients

```sql
SELECT *
FROM staging.ingredients
```

| Column   | Type      | Description   | Unique   |
|:---------|:----------|:--------------|:---------|
| name     | `VARCHAR` |               | ✅       |

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

| Column        | Type      | Description   | Unique   |
|:--------------|:----------|:--------------|:---------|
| name          | `VARCHAR` |               |          |
| pizza_type_id | `VARCHAR` |               |          |

### staging.pizza_types

```sql
SELECT *
FROM staging.pizza_types
```

| Column   | Type      | Description   | Unique   |
|:---------|:----------|:--------------|:---------|
| category | `VARCHAR` |               |          |
| name     | `VARCHAR` |               |          |
| type_id  | `VARCHAR` |               |          |

### staging.pizze

```sql
SELECT *
FROM staging.pizze
```

| Column        | Type      | Description   | Unique   |
|:--------------|:----------|:--------------|:---------|
| pizza_type_id | `VARCHAR` |               |          |
| price         | `DOUBLE`  |               |          |
| size          | `VARCHAR` |               |          |

