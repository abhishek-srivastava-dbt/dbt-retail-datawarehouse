{{ config(
    materialized='table'
) }}

SELECT
    product_id,
    product_name,
    category,
    brand,
    supplier_id,
    price,
    status
FROM {{ source('raw', 'products') }}