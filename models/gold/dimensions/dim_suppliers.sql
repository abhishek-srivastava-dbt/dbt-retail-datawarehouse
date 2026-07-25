{{ config(
    materialized='table'
) }}

SELECT

    supplier_id,

    supplier_name,

    contact_person,

    phone,

    email,

    city,

    country,

    email_domain

FROM {{ ref('sl_suppliers') }}