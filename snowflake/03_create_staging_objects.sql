-- ============================================================
-- Staging Layer Bootstrap
-- Project: Enterprise Retail Analytics Platform
-- Purpose:
--   Validate staging-layer expectations for the dbt project.
--
-- Current Design:
--   The project does not contain physical staging models.
--   RAW tables are consumed directly by Bronze dbt models.
-- ============================================================


-- ============================================================
-- 1. DATABASE CONTEXT
-- ============================================================

USE DATABASE DBT_LEARNING;


-- ============================================================
-- 2. VALIDATE RAW SOURCE OBJECTS
-- ============================================================

SHOW TABLES IN SCHEMA DBT_LEARNING.RAW;


-- ============================================================
-- 3. STAGING DESIGN NOTE
-- ============================================================

-- No physical STAGING tables/views are created here.
--
-- Current dbt architecture:
--
-- RAW
--   ↓
-- BRONZE
--   ↓
-- SILVER
--   ↓
-- GOLD
--   ↓
-- MARTS
--
-- dbt models are responsible for creating the transformation
-- objects in BRONZE, SILVER and GOLD.


-- ============================================================
-- 4. VALIDATION
-- ============================================================

SHOW SCHEMAS IN DATABASE DBT_LEARNING;