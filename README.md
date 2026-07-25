# 🚀 End-to-End Retail Data Warehouse using dbt & Snowflake
> A production-style Retail Data Warehouse built using Snowflake, dbt, SQL, and Python that demonstrates modern Data Engineering practices including layered architecture, Star Schema design, Fact & Dimension modeling, Business Marts, Git version control, and analytics-ready data pipelines.

## 📌 Project Overview
This project demonstrates the design and implementation of a modern Retail Data Warehouse using Snowflake and dbt.

The solution follows a layered architecture that transforms raw operational data into business-ready analytical models using dbt best practices.

---

## 🎯 Objectives

- Build a production-style Data Warehouse
- Implement Bronze, Silver and Gold layers
- Design Star Schema
- Create Fact and Dimension models
- Build Business Marts
- Demonstrate dbt best practices
- Prepare a portfolio-ready Data Engineering project

---

## 🛠 Technology Stack

- Snowflake
- dbt
- SQL
- Git
- GitHub
- VS Code

---

## 📂 Project Structure

```text
dbt_learning
│
├── models
│   ├── bronze
│   ├── silver
│   ├── gold
│   │    ├── dimensions
│   │    └── facts
│   └── marts
│
├── macros
├── seeds
├── snapshots
├── tests
└── dbt_project.yml
```