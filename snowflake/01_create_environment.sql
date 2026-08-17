-- ============================================================
-- Snowflake Environment Bootstrap
-- Project: Enterprise Retail Analytics Platform
-- Purpose: Recreate the base Snowflake environment
-- ============================================================


-- ============================================================
-- 1. CREATE DATABASE
-- ============================================================

CREATE DATABASE IF NOT EXISTS DBT_LEARNING;


-- ============================================================
-- 2. USE DATABASE
-- ============================================================

USE DATABASE DBT_LEARNING;


-- ============================================================
-- 3. CREATE PROJECT WAREHOUSE
-- ============================================================

CREATE WAREHOUSE IF NOT EXISTS DBT_WH
    WAREHOUSE_SIZE = 'X-SMALL'
    AUTO_SUSPEND = 60
    AUTO_RESUME = TRUE
    INITIALLY_SUSPENDED = TRUE;


-- ============================================================
-- 4. USE PROJECT WAREHOUSE
-- ============================================================

USE WAREHOUSE DBT_WH;


-- ============================================================
-- 5. CREATE PROJECT SCHEMAS
-- ============================================================

CREATE SCHEMA IF NOT EXISTS RAW;

CREATE SCHEMA IF NOT EXISTS BRONZE;

CREATE SCHEMA IF NOT EXISTS SILVER;

CREATE SCHEMA IF NOT EXISTS GOLD;

CREATE SCHEMA IF NOT EXISTS SNAPSHOTS;


-- ============================================================
-- 6. CREATE DEVELOPMENT SCHEMAS
-- ============================================================

CREATE SCHEMA IF NOT EXISTS DEV;

CREATE SCHEMA IF NOT EXISTS DEV_BRONZE;

CREATE SCHEMA IF NOT EXISTS DEV_SILVER;

CREATE SCHEMA IF NOT EXISTS DEV_GOLD;


-- ============================================================
-- 7. VALIDATION
-- ============================================================

SHOW SCHEMAS IN DATABASE DBT_LEARNING;

SHOW WAREHOUSES;