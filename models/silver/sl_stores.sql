{{ config(
    materialized='table'
) }}

SELECT

    store_id,

    INITCAP(TRIM(store_name)) AS store_name,

    INITCAP(TRIM(city)) AS city,

    INITCAP(TRIM(state)) AS state,

    UPPER(TRIM(country)) AS country,

    INITCAP(TRIM(manager_name)) AS manager_name,

    open_date,

    DATEDIFF(
        day,
        open_date,
        CURRENT_DATE()
    ) AS store_age_days

FROM {{ ref('br_stores') }}