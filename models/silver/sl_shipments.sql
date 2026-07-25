{{ config(
    materialized='table'
) }}

SELECT

    shipment_id,

    order_id,

    shipment_date,

    delivery_date,

    UPPER(TRIM(courier_name)) AS courier_name,

    UPPER(TRIM(shipment_status)) AS shipment_status,

    DATEDIFF(
        day,
        shipment_date,
        delivery_date
    ) AS delivery_days

FROM {{ ref('br_shipments') }}