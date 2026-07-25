{{ config(
    materialized='table'
) }}

SELECT

    payment_id,

    order_id,

    payment_method,

    payment_date,

    payment_status,

    amount

FROM {{ source('raw', 'payments') }}