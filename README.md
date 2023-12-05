# The Great Pizza Cleanup

Showcasing Lea: our secret weapon in the battle against pizza pretenders. Lea helps us slice through the clutter, identifying and tossing out the most outrageous pizza claims.

[Read more](https://leonardonatale.github.io/blog/the-great-pizza-cleanup/)!

## Installation

This project it built on top of [DuckDB](https://duckdb.org/) and [MotherDuck](https://motherduck.com/). You can find more info on how to get your motherduck token [here](https://motherduck.com/docs/getting-started/connect-query-from-python/installation-authentication/#authenticating-to-motherduck).

- `poetry install`
- `cp .env.example .env` and fill the username variable
- `poetry shell`

## Usage

- `lea prepare`
- `lea run`
- `lea docs` (optional)

## Final Flowchart

```mermaid
%%{init: {"flowchart": {"defaultRenderer": "elk"}} }%%
flowchart TB

    subgraph analytics
        analytics.kpis(kpis)
        analytics.peak_hours(peak_hours)
        analytics.sales_by_month(sales_by_month)
        analytics.top10_bestseller(top10_bestseller)
    end


    subgraph pizza_police
        pizza_police.orders(orders)
        pizza_police.pizze(pizze)
    end


    subgraph raw
        raw.order_details(order_details)
        raw.orders(orders)
        raw.pizza_types(pizza_types)
        raw.pizzas(pizzas)
    end


    subgraph staging
        staging.orders(orders)
        staging.pizza_ingredients(pizza_ingredients)
        staging.pizzas(pizzas)
    end

    pizza_police.orders --> analytics.kpis
    pizza_police.pizze --> analytics.kpis
    pizza_police.orders --> analytics.peak_hours
    pizza_police.orders --> analytics.sales_by_month
    pizza_police.pizze --> analytics.sales_by_month
    pizza_police.orders --> analytics.top10_bestseller
    pizza_police.pizze --> analytics.top10_bestseller
    staging.orders --> pizza_police.orders
    staging.pizza_ingredients --> pizza_police.orders
    staging.pizza_ingredients --> pizza_police.pizze
    staging.pizzas --> pizza_police.pizze
    raw.order_details --> staging.orders
    raw.orders --> staging.orders
    raw.pizzas --> staging.orders
    raw.pizza_types --> staging.pizza_ingredients
    raw.pizza_types --> staging.pizzas
    raw.pizzas --> staging.pizzas
```
