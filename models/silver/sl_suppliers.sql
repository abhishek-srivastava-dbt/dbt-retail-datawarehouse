{{ config(
    materialized='table'
) }}

SELECT

    supplier_id,

    INITCAP(TRIM(supplier_name)) AS supplier_name,

    INITCAP(TRIM(contact_person)) AS contact_person,

    phone,

    LOWER(TRIM(email)) AS email,

    INITCAP(TRIM(city)) AS city,

    UPPER(TRIM(country)) AS country,

    SPLIT_PART(
        LOWER(TRIM(email)),
        '@',
        2
    ) AS email_domain

FROM {{ ref('br_suppliers') }}