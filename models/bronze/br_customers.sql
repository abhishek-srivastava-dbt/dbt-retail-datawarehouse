{{ config(
    materialized='view'
) }}

SELECT

    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    GENDER,
    EMAIL,
    PHONE,
    CITY,
    STATE,
    COUNTRY,
    REGISTER_DATE,

    CURRENT_TIMESTAMP AS LOADED_AT

FROM {{ source('raw', 'customers') }}