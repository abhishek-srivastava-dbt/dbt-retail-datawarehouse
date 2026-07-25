{{ config(
    materialized='table'
) }}

SELECT

    promotion_id,

    product_id,

    INITCAP(TRIM(promotion_name)) AS promotion_name,

    discount_percent,

    start_date,

    end_date,

    DATEDIFF(
        day,
        start_date,
        end_date
    ) AS promotion_duration_days,

    CASE
        WHEN CURRENT_DATE() BETWEEN start_date AND end_date
        THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS promotion_status

FROM {{ ref('br_promotions') }}