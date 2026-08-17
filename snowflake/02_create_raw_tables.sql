-- ============================================================
-- RAW Layer Table Bootstrap
-- Project: Enterprise Retail Analytics Platform
-- Purpose: Recreate RAW tables in a new Snowflake account
-- ============================================================

USE DATABASE DBT_LEARNING;
USE SCHEMA RAW;


-- ============================================================
-- 1. CUSTOMERS
-- ============================================================

CREATE TABLE IF NOT EXISTS CUSTOMERS (
    CUSTOMER_ID     TEXT,
    FIRST_NAME      TEXT,
    LAST_NAME       TEXT,
    GENDER          TEXT,
    EMAIL           TEXT,
    PHONE           NUMBER(38,0),
    CITY            TEXT,
    STATE           TEXT,
    COUNTRY         TEXT,
    REGISTER_DATE   DATE
);


-- ============================================================
-- 2. ORDERS
-- ============================================================

CREATE TABLE IF NOT EXISTS ORDERS (
    ORDER_ID        TEXT,
    CUSTOMER_ID     TEXT,
    PRODUCT_ID      TEXT,
    STORE_ID        TEXT,
    ORDER_DATE      DATE,
    QUANTITY        NUMBER(38,0),
    TOTAL_AMOUNT    NUMBER(38,0),
    ORDER_STATUS    TEXT
);


-- ============================================================
-- 3. PAYMENTS
-- ============================================================

CREATE TABLE IF NOT EXISTS PAYMENTS (
    PAYMENT_ID      TEXT,
    ORDER_ID        TEXT,
    PAYMENT_METHOD  TEXT,
    PAYMENT_DATE    DATE,
    PAYMENT_STATUS  TEXT,
    AMOUNT          NUMBER(38,0)
);


-- ============================================================
-- 4. PRODUCTS
-- ============================================================

CREATE TABLE IF NOT EXISTS PRODUCTS (
    PRODUCT_ID      TEXT,
    PRODUCT_NAME    TEXT,
    CATEGORY        TEXT,
    BRAND           TEXT,
    SUPPLIER_ID     TEXT,
    PRICE           NUMBER(38,0),
    STATUS          TEXT
);


-- ============================================================
-- 5. PROMOTIONS
-- ============================================================

CREATE TABLE IF NOT EXISTS PROMOTIONS (
    PROMOTION_ID    TEXT,
    PRODUCT_ID      TEXT,
    PROMOTION_NAME  TEXT,
    DISCOUNT_PERCENT NUMBER(38,0),
    START_DATE      DATE,
    END_DATE        DATE
);


-- ============================================================
-- 6. SHIPMENTS
-- ============================================================

CREATE TABLE IF NOT EXISTS SHIPMENTS (
    SHIPMENT_ID     TEXT,
    ORDER_ID        TEXT,
    SHIPMENT_DATE   DATE,
    DELIVERY_DATE   DATE,
    COURIER_NAME    TEXT,
    SHIPMENT_STATUS TEXT
);


-- ============================================================
-- 7. STORES
-- ============================================================

CREATE TABLE IF NOT EXISTS STORES (
    STORE_ID        TEXT,
    STORE_NAME      TEXT,
    CITY            TEXT,
    STATE           TEXT,
    COUNTRY         TEXT,
    MANAGER_NAME    TEXT,
    OPEN_DATE       DATE
);


-- ============================================================
-- 8. SUPPLIERS
-- ============================================================

CREATE TABLE IF NOT EXISTS SUPPLIERS (
    SUPPLIER_ID     TEXT,
    SUPPLIER_NAME   TEXT,
    CONTACT_PERSON  TEXT,
    PHONE           NUMBER(38,0),
    EMAIL           TEXT,
    CITY            TEXT,
    COUNTRY         TEXT
);


-- ============================================================
-- VALIDATION
-- ============================================================

SHOW TABLES IN SCHEMA DBT_LEARNING.RAW;