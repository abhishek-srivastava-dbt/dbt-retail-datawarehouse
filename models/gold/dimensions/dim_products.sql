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

    status,

    price_category

FROM {{ ref('sl_products') }}