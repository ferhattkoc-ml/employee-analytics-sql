# Employee Analytics with SQL (MySQL)

## 📌 Project Overview
This project focuses on analyzing employee data using **MySQL** with an analytical, data-driven approach.

The goal is not only to write SQL queries, but to **extract meaningful insights** from a normalized relational database by answering real-world, HR-style analytical questions.

The project demonstrates SQL usage from a **Data Analyst / Data Scientist perspective**, covering data modeling, aggregation, segmentation, and advanced analytical querying.

---

## 🗂️ Database Design

The database is designed in **3rd Normal Form (3NF)** with a clear separation between **dimension tables** and a **fact table**.

### 🔹 Dimension Tables
- `calisan` – Employee identity information (name, surname)
- `departman` – Department details
- `sehir` – City information
- `telefon_tur` – Phone type reference table

### 🔹 Fact Table
- `calisan_table` – Stores measurable and relational employee data

  calisan_table
├── calisan_id (FK)
├── dep_id (FK)
├── sehir_id (FK)
├── telefon_tur_id (FK)
├── dogumtarihi
└── maas

All relationships are enforced using **foreign keys** and the **InnoDB storage engine**, ensuring full referential integrity.

A full schema diagram is available in the `screenshot/` folder.

---

## 🔍 Analytical Queries Included

The project includes multiple analytical SQL queries, such as:

### 1️⃣ Employee Count & Average Salary by Department
- Workforce size and average salary distribution across departments

### 2️⃣ Average Salary by City
- City-level salary comparison and regional insights

### 3️⃣ Top 10 Highest Paid Employees
- Identification of top earners with department and city context

### 4️⃣ Salary Segmentation
Employees are categorized into three salary segments:
- **High:** ≥ 15,000
- **Medium:** 5,000 – 14,999
- **Low:** < 5,000

This segmentation converts raw salary values into **business-friendly categories**.

### 5️⃣ City & Department Breakdown
- Employee count and average salary grouped by both city and department

### 6️⃣ Average Age by Department
- Employee age calculated using `TIMESTAMPDIFF`

### 7️⃣ Salary Analysis by Age Groups
- Employees grouped into age decades (20s, 30s, 40s, etc.)
- Average salary and employee count per age group

Query results and outputs are documented with screenshots inside the `screenshot/` directory.

---

## 🧠 SQL Concepts & Techniques Used

- Multi-table `JOIN`s
- `GROUP BY` aggregations
- `CASE WHEN` logic for segmentation
- Aggregate functions (`COUNT`, `AVG`, `MIN`, `MAX`)
- Date & time functions (`TIMESTAMPDIFF`)
- Relational modeling & normalization
- Analytical problem-solving with SQL

---

## ⚙️ Technologies

- **MySQL**
- **DBeaver**
- **Excel** (CSV-based data preparation)
- **Git & GitHub**
- **macOS (Apple Silicon)**

---

## 🎯 Project Purpose

This project demonstrates:

- Strong understanding of **relational database design**
- Ability to perform **analytical SQL queries**, not just basic CRUD operations
- Readiness for **dashboarding, ETL pipelines, and future ML workflows**
- A clear **data analytics mindset** supported by real, query-driven insights

























