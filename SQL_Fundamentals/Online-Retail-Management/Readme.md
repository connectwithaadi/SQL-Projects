# 🛒 Online Retail Sales Database (PostgreSQL)

A beginner-friendly PostgreSQL project demonstrating **SQL fundamentals through an Online Retail Sales database**.

This project focuses on writing and understanding practical SQL queries for managing customer and order data. It covers essential database operations such as creating tables, inserting and modifying records, filtering data, handling `NULL` values, using conditional logic, and sorting results.

## 📌 Project Overview

The **Online Retail Sales Database** represents a simple retail system containing customer and order information.

The project is designed to strengthen core SQL skills that are useful for:

* Data Analysis
* Data Science
* Backend Development
* Database Management
* AI/ML Data Preparation

## 🎯 Topics Covered

* `CREATE TABLE`
* `INSERT INTO`
* `UPDATE`
* `DELETE`
* `SELECT`
* `WHERE`
* `DISTINCT`
* `NULL` Handling
* `CASE WHEN`
* `ORDER BY`
* `LIMIT`
* Basic CRUD Operations

## 🗄️ Database Structure

### Tables

* **customers** — Stores customer information.
* **orders** — Stores order-related information.

The project uses these tables to practice querying and modifying relational data.

## 🛠️ Technologies Used

* **PostgreSQL**
* **SQL**

## 📂 Project Structure

```text
Online-Retail-Management/
│
├── ScreenShots/
│   └── Query result screenshots
│
├── schema.sql
├── data.sql
├── queries.sql
└── Readme.md
```

## 📄 SQL Files

### `schema.sql`

Contains the SQL statements required to create the database tables and their structure.

### `data.sql`

Contains sample data used to populate the database.

### `queries.sql`

Contains practical SQL queries demonstrating the concepts covered in this project, including:

* Data retrieval
* Filtering
* Sorting
* Limiting results
* Updating records
* Deleting records
* Removing duplicates
* Handling missing values
* Conditional logic

## ▶️ How to Run

### 1. Create the Database

```sql
CREATE DATABASE online_retail;
```

### 2. Connect to the Database

Using PostgreSQL `psql`:

```sql
\c online_retail
```

### 3. Create the Tables

```sql
\i schema.sql
```

### 4. Insert Sample Data

```sql
\i data.sql
```

### 5. Run the Queries

```sql
\i queries.sql
```

## 📸 Screenshots

The `ScreenShots/` folder contains screenshots of query execution and results from the project.

These screenshots provide visual evidence of the SQL operations performed during the project.

## 📚 Learning Outcomes

By completing this project, I practiced the fundamentals of working with relational databases using PostgreSQL.

Key learning outcomes include:

* Creating and structuring database tables
* Inserting and modifying records
* Performing CRUD operations
* Filtering and sorting database results
* Working with duplicate values using `DISTINCT`
* Handling missing data using `NULL`
* Implementing conditional logic using `CASE WHEN`
* Writing practical SQL queries for a real-world-style dataset

## 🚀 Purpose

This project is part of my **AI Engineer learning journey**.

Strong SQL and database fundamentals are important before working with data-intensive applications, backend systems, Machine Learning pipelines, and AI applications.

The goal is to progress from **SQL fundamentals → advanced databases → backend development → AI engineering** through hands-on projects.

---

**Built as part of my SQL learning journey 🚀**
