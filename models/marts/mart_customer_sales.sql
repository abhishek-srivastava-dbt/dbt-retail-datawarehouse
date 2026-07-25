{{ config(
    materialized='table'
) }}

SELECT

    customer_id,

    COUNT(order_id) AS total_orders,

    SUM(total_amount) AS total_sales,

    AVG(total_amount) AS average_order_value,

    SUM(quantity) AS total_quantity

FROM {{ ref('fact_sales') }}

GROUP BY customer_id