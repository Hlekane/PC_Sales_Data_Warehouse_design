# PC Sales ETLs - Building a data pipeline

![SQL Server](https://img.shields.io/badge/SQL%20Server-T--SQL-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![SSMS](https://img.shields.io/badge/SSMS-Database%20IDE-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)

A data warehousing learning project focused on transforming a flat CSV dataset into a structured star schema using SQL Server.

---

## Project Overview

This project models PC sales transactions across stores, channels, and salespeople. Data is first loaded into a staging table, then cleaned and transformed into a fact table supported by nine dimension tables.

The emphasis is on understanding **data flow from raw source → staging → analytical model**, rather than only querying final outputs.

---

## Star Schema

![Star Schema](star_schema.png)

---

## Project Planning

| Phase | Task | Status |
|-------|------|--------|
| 1 | Design star schema (fact vs dimensions) | ✅ Done |
| 2 | Create staging layer and load CSV data | ✅ Done |
| 3 | Build dimension tables with surrogate keys | ✅ Done |
| 4 | Create fact table with foreign keys | ✅ Done |
| 5 | Automate fact table creation (stored procedure) | ✅ Done |
| 6 | Load measures from staging into fact table | ✅ Done |
| 7 | Add audit column (`LoadDate`) | ✅ Done |
| 8 | Build Power BI visuals | 🔄 In Progress |

---

## Key Concepts Demonstrated

- **Star schema design** for analytical querying  
- **Staging layer** to preserve raw data before transformation  
- **Surrogate keys** (`IDENTITY`) to decouple source data from the model  
- **Foreign key constraints** to enforce referential integrity  
- **Stored procedures** to automate table lifecycle (drop → create → load)  
- **Data cleaning** and deduplication using `DISTINCT`  
- **Basic data lineage** using `LoadDate` audit column  

---

## Fact Table Measures

`PC_Sales_Fact` captures transactional metrics:

| Column | Description |
|--------|-------------|
| `Cost_Price` | Unit cost |
| `Sale_Price` | Selling price |
| `Discount_Amount` | Discount applied |
| `Finance_Amount` | Financed portion |
| `Credit_Score` | Customer credit score |
| `Cost_of_Repairs` | Post-sale repair cost |
| `Total_Sales_per_Employee` | Running sales per salesperson |
| `PC_Market_Price` | Market value at time of sale |

---

## Dimension Tables

| Dimension | Grain |
|-----------|-------|
| `dim_Customer` | One row per customer |
| `dim_Date` | One row per date |
| `dim_Location` | One row per location |
| `dim_Channel` | One row per channel |
| `dim_Payment_Method` | One row per payment type |
| `dim_Store` | One row per store |
| `dim_Product` | One row per product |
| `dim_Priority` | One row per priority level |
| `dim_Salesperson` | One row per salesperson |

---

## Tech Stack

| Tool | Purpose |
|------|---------|
| SQL Server / T-SQL | Data modelling, transformations, stored procedures |
| SSMS | Query development and testing |
| Power BI | Data visualisation |
| GitHub | Version control and documentation |

---

## What I Learned

- How to move from a flat dataset to a structured analytical model  
- Why separating facts and dimensions improves query performance and clarity  
- How schema changes impact downstream dependencies (e.g., foreign keys)  
- The value of automation using stored procedures for repeatable workflows  

---

## Next Steps

- Convert `Finance_Amount` and `Cost_of_Repairs` to `DECIMAL`  
- Align all foreign key data types with dimension primary keys  
- Create reporting views for easier Power BI integration  
- Add indexing to improve query performance  

---
