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

    open_date,

    store_age_days

FROM {{ ref('sl_stores') }}