{{ config(
    materialized='table'
) }}

SELECT

    payment_id,

    order_id,

    UPPER(TRIM(payment_method)) AS payment_method,

    payment_date,

    UPPER(TRIM(payment_status)) AS payment_status,

    amount,

    CASE
        WHEN UPPER(TRIM(payment_status)) = 'SUCCESS'
        THEN 1
        ELSE 0
    END AS payment_success_flag

FROM {{ ref('br_payments') }}