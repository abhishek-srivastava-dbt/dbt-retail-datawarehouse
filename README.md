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

## 🏗️ Solution Architecture

![End-to-End Architecture](diagrams/architecture.png)

---

## ⭐ Star Schema

![Star Schema](diagrams/star_schema.png)


---

## 🔄 dbt Lineage

![dbt Lineage](diagrams/dbt_lineage.png)


---

## 🛠 Technology Stack

- Snowflake
- dbt
- SQL
- Git
- GitHub
- VS Code

---

## ✅ Data Quality & Testing


Data quality is validated at every layer using dbt's built-in and custom tests to catch issues early in the pipeline.

- **Generic tests**: `not_null`, `unique`, `relationships`, and `accepted_values` applied across Silver and Gold layer models to enforce schema integrity and referential accuracy
- **Custom singular tests**: business-rule validations (e.g., no negative order quantities, valid date ranges) written to catch domain-specific data issues
- **Source freshness checks**: configured to flag stale data from upstream sources
- **Test coverage**: tests run automatically as part of `dbt test`, with results reviewed before promoting models to the Gold layer

This mirrors real-world ETL QA practice — validating data at each transformation stage rather than only at the final output.

---

## ▶️ How to Run This Project


**Prerequisites:** dbt Core, a Snowflake account, and VS Code (or any IDE) with Git installed.

```bash
# 1. Clone the repository
git clone https://github.com/abhishek-srivastava-dbt/dbt-retail-datawarehouse.git
cd dbt-retail-datawarehouse

# 2. Install dependencies
dbt deps

# 3. Configure your Snowflake connection
# Add your credentials to ~/.dbt/profiles.yml

# 4. Test the connection
dbt debug

# 5. Load seed data (if applicable)
dbt seed

# 6. Run all models (Bronze → Silver → Gold)
dbt run

# 7. Run data quality tests
dbt test

# 8. Generate and view documentation/lineage
dbt docs generate
dbt docs serve
```

---

## 💡 Key Learnings & Challenges

- Designing a **layered Bronze/Silver/Gold architecture** required careful thought on where transformation logic belongs vs. where raw data should stay untouched
- Building a **Star Schema** meant resolving grain mismatches between fact and dimension sources before modeling
- Writing **custom dbt tests** surfaced real data quality edge cases (nulls, duplicates, orphaned keys) that generic tests alone wouldn't catch
- Using **dbt lineage graphs** made it much easier to trace downstream impact before changing an upstream model — a habit directly transferable to production ETL testing

## 📂 Project Structure

```text
dbt_learning
│
├── diagrams
│   ├── architecture.png
│   ├── star_schema.png
│   └── dbt_lineage.png
│
├── models
│   ├── bronze
│   ├── silver
│   ├── gold
│   │   ├── dimensions
│   │   └── facts
│   └── marts
│
├── macros
├── seeds
├── snapshots
├── tests
├── README.md
└── dbt_project.yml
```

