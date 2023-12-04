# Views

## Schemas

- [`analytics`](./analytics)
- [`pizza_police`](./pizza_police)
- [`raw`](./raw)
- [`staging`](./staging)

## Schema flowchart

```mermaid
%%{init: {"flowchart": {"defaultRenderer": "elk"}} }%%
flowchart TB
    analytics(analytics)
    pizza_police(pizza_police)
    raw(raw)
    staging(staging)
    pizza_police --> analytics
    staging --> pizza_police
    raw --> staging
```

## Flowchart

```mermaid
%%{init: {"flowchart": {"defaultRenderer": "elk"}} }%%
flowchart TB

    subgraph analytics
        analytics.kpis(kpis)
    end


    subgraph pizza_police
        pizza_police.orders(orders)
        pizza_police.pizze(pizze)
    end


    subgraph raw
        raw.order_details(order_details)
        raw.orders(orders)
        raw.pizza_types(pizza_types)
        raw.pizze(pizze)
    end


    subgraph staging
        staging.orders(orders)
        staging.pizza_ingredients(pizza_ingredients)
        staging.pizze(pizze)
    end

    pizza_police.orders --> analytics.kpis
    staging.orders --> pizza_police.orders
    staging.pizza_ingredients --> pizza_police.orders
    staging.pizza_ingredients --> pizza_police.pizze
    staging.pizze --> pizza_police.pizze
    raw.order_details --> staging.orders
    raw.orders --> staging.orders
    raw.pizze --> staging.orders
    raw.pizza_types --> staging.pizza_ingredients
    raw.pizza_types --> staging.pizze
    raw.pizze --> staging.pizze
```

