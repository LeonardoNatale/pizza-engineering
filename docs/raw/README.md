# raw

## Table of contents

- [raw.order_details](#raw.order_details)
- [raw.orders](#raw.orders)
- [raw.pizza_types](#raw.pizza_types)
- [raw.pizzas](#raw.pizzas)

## Views

### raw.order_details

```sql
SELECT *
FROM raw.order_details
```

| Column           | Type      | Description   | Unique   |
|:-----------------|:----------|:--------------|:---------|
| order_details_id | `BIGINT`  |               |          |
| order_id         | `BIGINT`  |               |          |
| pizza_id         | `VARCHAR` |               |          |
| quantity         | `BIGINT`  |               |          |

### raw.orders

```sql
SELECT *
FROM raw.orders
```

| Column   | Type           | Description   | Unique   |
|:---------|:---------------|:--------------|:---------|
| datetime | `TIMESTAMP_NS` |               |          |
| order_id | `BIGINT`       |               |          |

### raw.pizza_types

```sql
SELECT *
FROM raw.pizza_types
```

| Column        | Type      | Description   | Unique   |
|:--------------|:----------|:--------------|:---------|
| category      | `VARCHAR` |               |          |
| ingredients   | `VARCHAR` |               |          |
| name          | `VARCHAR` |               |          |
| pizza_type_id | `VARCHAR` |               |          |

### raw.pizzas

```sql
SELECT *
FROM raw.pizzas
```

| Column        | Type      | Description   | Unique   |
|:--------------|:----------|:--------------|:---------|
| pizza_id      | `VARCHAR` |               |          |
| pizza_type_id | `VARCHAR` |               |          |
| price         | `DOUBLE`  |               |          |
| size          | `VARCHAR` |               |          |

