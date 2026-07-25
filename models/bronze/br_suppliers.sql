{{ config(
    materialized='table'
) }}

SELECT
    supplier_id,
    supplier_name,
    contact_person,
    phone,
    email,
    city,
    country
FROM {{ source('raw', 'suppliers') }}