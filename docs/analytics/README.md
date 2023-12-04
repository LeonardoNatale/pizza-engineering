# analytics

## Table of contents

- [analytics.kpis](#analytics.kpis)
- [analytics.peak_hours](#analytics.peak_hours)
- [analytics.sales_by_month](#analytics.sales_by_month)
- [analytics.top10_bestseller](#analytics.top10_bestseller)

## Views

### analytics.kpis

```sql
SELECT *
FROM analytics.kpis
```

| Column   | Type      | Description   | Unique   |
|:---------|:----------|:--------------|:---------|
| metric   | `VARCHAR` |               |          |
| value    | `VARCHAR` |               |          |

### analytics.peak_hours

```sql
SELECT *
FROM analytics.peak_hours
```

| Column      | Type     | Description   | Unique   |
|:------------|:---------|:--------------|:---------|
| hour        | `BIGINT` |               |          |
| order_count | `BIGINT` |               |          |

### analytics.sales_by_month

```sql
SELECT *
FROM analytics.sales_by_month
```

| Column      | Type      | Description   | Unique   |
|:------------|:----------|:--------------|:---------|
| MONTH       | `VARCHAR` |               |          |
| total_sales | `DOUBLE`  |               |          |

### analytics.top10_bestseller

```sql
SELECT *
FROM analytics.top10_bestseller
```

| Column   | Type      | Description   | Unique   |
|:---------|:----------|:--------------|:---------|
| name     | `VARCHAR` |               |          |
| total    | `HUGEINT` |               |          |

