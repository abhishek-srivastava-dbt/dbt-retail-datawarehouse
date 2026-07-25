{{ config(
    materialized='table'
) }}

SELECT

    order_id,

    customer_id,

    product_id,

    store_id,

    order_date,

    quantity,

    total_amount,

    UPPER(order_status) AS order_status,

    YEAR(order_date) AS order_year,

    MONTH(order_date) AS order_month,

    QUARTER(order_date) AS order_quarter,

    MONTHNAME(order_date) AS order_month_name,

    DAYNAME(order_date) AS order_day_name

FROM {{ ref('br_orders') }}