-- ============================================================
-- Snowflake Environment Validation
-- Project: Enterprise Retail Analytics Platform
-- Purpose:
--   Validate that the Snowflake environment is ready
--   for the dbt Retail Analytics project.
-- ============================================================


-- ============================================================
-- 1. DATABASE CONTEXT
-- ============================================================

USE DATABASE DBT_LEARNING;


-- ============================================================
-- 2. DATABASE VALIDATION
-- ============================================================

SHOW DATABASES LIKE 'DBT_LEARNING';


-- ============================================================
-- 3. WAREHOUSE VALIDATION
-- ============================================================

SHOW WAREHOUSES LIKE 'DBT_WH';


-- ============================================================
-- 4. SCHEMA VALIDATION
-- ============================================================

SHOW SCHEMAS IN DATABASE DBT_LEARNING;


-- ============================================================
-- 5. RAW TABLE VALIDATION
-- ============================================================

SHOW TABLES IN SCHEMA DBT_LEARNING.RAW;


-- ============================================================
-- 6. EXPECTED RAW TABLES
-- ============================================================

-- Expected RAW tables:
--
-- CUSTOMERS
-- ORDERS
-- PAYMENTS
-- PRODUCTS
-- PROMOTIONS
-- SHIPMENTS
-- STORES
-- SUPPLIERS


-- ============================================================
-- 7. DBT TARGET SCHEMA VALIDATION
-- ============================================================

SHOW SCHEMAS LIKE 'BRONZE' IN DATABASE DBT_LEARNING;

SHOW SCHEMAS LIKE 'SILVER' IN DATABASE DBT_LEARNING;

SHOW SCHEMAS LIKE 'GOLD' IN DATABASE DBT_LEARNING;

SHOW SCHEMAS LIKE 'SNAPSHOTS' IN DATABASE DBT_LEARNING;


-- ============================================================
-- 8. DEVELOPMENT SCHEMA VALIDATION
-- ============================================================

SHOW SCHEMAS LIKE 'DEV' IN DATABASE DBT_LEARNING;

SHOW SCHEMAS LIKE 'DEV_BRONZE' IN DATABASE DBT_LEARNING;

SHOW SCHEMAS LIKE 'DEV_SILVER' IN DATABASE DBT_LEARNING;

SHOW SCHEMAS LIKE 'DEV_GOLD' IN DATABASE DBT_LEARNING;


-- ============================================================
-- 9. CURRENT DBT OBJECTS
-- ============================================================

SHOW VIEWS IN SCHEMA DBT_LEARNING.BRONZE;

SHOW VIEWS IN SCHEMA DBT_LEARNING.SILVER;

SHOW TABLES IN SCHEMA DBT_LEARNING.GOLD;


-- ============================================================
-- 10. VALIDATION COMPLETE
-- ============================================================

SELECT
    'SNOWFLAKE ENVIRONMENT VALIDATION COMPLETED' AS STATUS;