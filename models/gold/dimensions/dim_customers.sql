{{ config(
    materialized='table'
) }}

SELECT

    customer_id,

    first_name,

    last_name,

    gender,

    email,

    phone,

    city,

    state,

    country,

    register_date,

    customer_age_days

FROM {{ ref('sl_customers') }}