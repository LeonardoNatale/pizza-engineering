# pizza_police

## Table of contents

- [pizza_police.orders](#pizza_police.orders)
- [pizza_police.pizze](#pizza_police.pizze)

## Views

### pizza_police.orders

```sql
SELECT *
FROM pizza_police.orders
```

| Column        | Type           | Description   | Unique   |
|:--------------|:---------------|:--------------|:---------|
| datetime      | `TIMESTAMP_NS` |               |          |
| order_id      | `BIGINT`       |               |          |
| pizza_type_id | `VARCHAR`      |               |          |
| quantity      | `BIGINT`       |               |          |
| size          | `VARCHAR`      |               |          |

### pizza_police.pizze

```sql
SELECT *
FROM pizza_police.pizze
```

| Column        | Type      | Description   | Unique   |
|:--------------|:----------|:--------------|:---------|
| category      | `VARCHAR` |               |          |
| name          | `VARCHAR` |               |          |
| pizza_type_id | `VARCHAR` |               |          |
| price         | `DOUBLE`  |               |          |
| size          | `VARCHAR` |               |          |

