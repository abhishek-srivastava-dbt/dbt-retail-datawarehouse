{{ config(
    materialized='table'
) }}

SELECT

    product_id,

    TRIM(product_name) AS product_name,

    TRIM(category) AS category,

    TRIM(brand) AS brand,

    supplier_id,

    price,

    UPPER(status) AS status,

    CASE
        WHEN price < 10000 THEN 'LOW'
        WHEN price BETWEEN 10000 AND 50000 THEN 'MEDIUM'
        ELSE 'HIGH'
    END AS price_category

FROM {{ ref('br_products') }}