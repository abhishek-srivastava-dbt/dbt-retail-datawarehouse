{{ config(
    materialized='table'
) }}

SELECT

    o.order_id,

    o.customer_id,

    o.product_id,

    p.supplier_id,

    o.store_id,

    o.order_date,

    o.quantity,

    o.total_amount,

    o.order_status,

    pay.payment_id,
    pay.payment_method,
    pay.payment_status,

    ship.shipment_id,
    ship.courier_name,
    ship.shipment_status,

    promo.promotion_id,
    promo.discount_percent

FROM {{ ref('sl_orders') }} o

LEFT JOIN {{ ref('sl_products') }} p
ON o.product_id = p.product_id

LEFT JOIN {{ ref('sl_payments') }} pay
ON o.order_id = pay.order_id

LEFT JOIN {{ ref('sl_shipments') }} ship
ON o.order_id = ship.order_id

LEFT JOIN {{ ref('sl_promotions') }} promo
ON o.product_id = promo.product_id