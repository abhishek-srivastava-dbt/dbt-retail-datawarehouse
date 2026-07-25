{{ config(
    materialized='table'
) }}

SELECT

    customer_id,

    TRIM(first_name) AS first_name,

    TRIM(last_name) AS last_name,

    CONCAT(
        TRIM(first_name),
        ' ',
        TRIM(last_name)
    ) AS full_name,

    UPPER(gender) AS gender,

    LOWER(TRIM(email)) AS email,

    phone,

    TRIM(city) AS city,

    TRIM(state) AS state,

    UPPER(TRIM(country)) AS country,

    CAST(register_date AS DATE) AS register_date,

    DATEDIFF(
        day,
        register_date,
        CURRENT_DATE()
    ) AS customer_age_days

FROM {{ ref('br_customers') }}