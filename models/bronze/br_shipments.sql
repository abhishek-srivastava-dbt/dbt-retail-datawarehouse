{{ config(
    materialized='table'
) }}

SELECT
    shipment_id,
    order_id,
    shipment_date,
    delivery_date,
    courier_name,
    shipment_status
FROM {{ source('raw', 'shipments') }}