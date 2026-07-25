{{ config(
    materialized='table'
) }}

SELECT
    order_id,
    customer_id,
    product_id,
    store_id,
    order_date,
    quantity,
    total_amount,
    order_status
FROM {{ source('raw', 'orders') }}