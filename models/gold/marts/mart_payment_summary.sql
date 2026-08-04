{{ config(
    materialized='table'
) }}

SELECT

    payment_method,

    payment_status,

    COUNT(order_id) AS total_orders,

    SUM(total_amount) AS total_sales,

    AVG(total_amount) AS average_order_value

FROM {{ ref('fact_sales') }}

GROUP BY

    payment_method,

    payment_status