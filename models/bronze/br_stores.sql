{{ config(
    materialized='table'
) }}

SELECT
    store_id,
    store_name,
    city,
    state,
    country,
    manager_name,
    open_date
FROM {{ source('raw', 'stores') }}