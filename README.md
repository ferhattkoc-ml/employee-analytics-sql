# Employee Analytics with SQL (MySQL)

## 📌 Project Overview
This project focuses on analyzing employee data using **MySQL** with an analytical, data-driven approach.
The goal is not only to write SQL queries, but to **extract meaningful insights** from a normalized relational database using real-world HR-style questions.

The project demonstrates SQL usage from a **Data Analyst / Data Scientist perspective**, including data modeling, aggregation, segmentation, and analytical querying.

---

## 🗂️ Database Design

The database is designed in **3rd Normal Form (3NF)** with a clear separation between dimension and fact tables.

### 🔹 Dimension Tables
- `calisan` – Employee identity information (name, surname)
- `departman` – Department details
- `sehir` – City information
- `telefon_tur` – Phone type reference table

### 🔹 Fact Table
- `calisan_table` – Stores measurable and relational data

```text
calisan_table
├── calisan_id (FK)
├── dep_id (FK)
├── sehir_id (FK)
├── telefon_tur_id (FK)
├── dogumtarihi
└── maas


All relationships are enforced using **foreign keys** and the **InnoDB storage engine**, ensuring referential integrity across the database.

---

## 🔍 Analytical Queries Included

The project includes several analytical SQL queries such as:

### 1️⃣ Employee Count & Average Salary by Department
- Workforce size and average salary distribution across departments

### 2️⃣ Average Salary by City
- City-level salary comparison and regional analysis

### 3️⃣ Top 10 Highest Paid Employees
- Identification of top earners with department and city context

### 4️⃣ Salary Segmentation
Employees are categorized into three salary segments:
- **High:** ≥ 15,000
- **Medium:** 5,000 – 14,999
- **Low:** < 5,000

This segmentation translates raw salary values into **business-friendly categories**.

### 5️⃣ City & Department Breakdown
- Employee count and average salary by both city and department

### 6️⃣ Average Age by Department
- Employee age calculated using `TIMESTAMPDIFF`

### 7️⃣ Salary Analysis by Age Groups
- Employees grouped into age decades (20s, 30s, 40s, etc.)
- Average salary and employee count per age group

---

## 🧠 SQL Concepts & Techniques Used

- Multi-table `JOIN`s
- `GROUP BY` aggregations
- `CASE WHEN` logic for segmentation
- Aggregate functions (`COUNT`, `AVG`, `MIN`, `MAX`)
- Date functions (`TIMESTAMPDIFF`)
- Relational modeling & normalization
- Analytical thinking with SQL

---

## ⚙️ Technologies

- **MySQL 9.5**
- **DBeaver**
- **Excel** (CSV data preparation)
- **Git & GitHub**
- **macOS (Apple Silicon)**

---

## 🎯 Project Purpose

This project demonstrates:
- Strong understanding of **relational database design**
- Ability to perform **analytical SQL queries**, not just basic CRUD
- Readiness for **dashboarding, ETL pipelines, and future ML applications**
- A clear **data analytics mindset**
