-- ============================================================
-- dbt Object Bootstrap
-- Project: Enterprise Retail Analytics Platform
-- Purpose:
--   Prepare Snowflake schemas required by dbt.
--   dbt will create/manage the actual model objects.
-- ============================================================


-- ============================================================
-- 1. DATABASE CONTEXT
-- ============================================================

USE DATABASE DBT_LEARNING;


-- ============================================================
-- 2. PRODUCTION SCHEMAS
-- ============================================================

CREATE SCHEMA IF NOT EXISTS BRONZE;

CREATE SCHEMA IF NOT EXISTS SILVER;

CREATE SCHEMA IF NOT EXISTS GOLD;

CREATE SCHEMA IF NOT EXISTS SNAPSHOTS;


-- ============================================================
-- 3. DEVELOPMENT SCHEMAS
-- ============================================================

CREATE SCHEMA IF NOT EXISTS DEV;

CREATE SCHEMA IF NOT EXISTS DEV_BRONZE;

CREATE SCHEMA IF NOT EXISTS DEV_SILVER;

CREATE SCHEMA IF NOT EXISTS DEV_GOLD;


-- ============================================================
-- 4. VALIDATION
-- ============================================================

SHOW SCHEMAS IN DATABASE DBT_LEARNING;