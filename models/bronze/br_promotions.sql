{{ config(
    materialized='table'
) }}

SELECT
    promotion_id,
    product_id,
    promotion_name,
    discount_percent,
    start_date,
    end_date
FROM {{ source('raw', 'promotions') }}