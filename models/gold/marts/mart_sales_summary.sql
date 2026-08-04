{{ config(
    materialized='table'
) }}

SELECT

    product_id,

    supplier_id,

    COUNT(order_id) AS total_orders,

    SUM(quantity) AS total_quantity,

    SUM(total_amount) AS total_sales,

    AVG(total_amount) AS average_order_value

FROM {{ ref('fact_sales') }}

GROUP BY

    product_id,

    supplier_id