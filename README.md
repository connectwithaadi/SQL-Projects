# 🗄️ SQL Projects — PostgreSQL for AI Engineering, Data & Backend

A structured collection of hands-on **PostgreSQL and SQL projects** covering database fundamentals, relational modeling, advanced SQL, PostgreSQL-specific features, query performance optimization, and backend database integration.

This repository is built as part of my **AI Engineer learning journey**, with a focus on developing strong database fundamentals before working with backend systems, data-intensive applications, Machine Learning, and AI applications.

The projects progress from:

**SQL Fundamentals → Intermediate SQL → Advanced SQL → PostgreSQL Features → Performance Optimization → Backend Database Integration**

---

## 📚 Repository Structure

```text
SQL-Projects/
│
├── Instagram Database/
│
├── SQL_Fundamentals/
│   ├── Student_Management_System-SQL/
│   └── Online-Retail-Management/
│
├── Intermediate SQL/
│   ├── Company-HR-Analytics-SQL/
│   └── University-Course-Enrollment-System/
│
├── PostgreSQL Features/
│   ├── PostgreSQL-Advanced-DataTypes/
│   ├── PostgreSQL-Programming/
│   └── PostgreSQL-Transactions/
│
├── SQL Advanced/
│   ├── cte-subqueries-sql/
│   ├── customer-data-integration-sql/
│   ├── views-constraints-sql/
│   └── window-functions-sql/
│
├── SQL Performance Projects/
│   ├── SQL-Index-Performance-Lab/
│   └── SQL-Query-Performance-Analyzer/
│
└── social-repo-Migration-Project/
    ├── Screenshots/
    ├── migrations/
    ├── src/
    ├── index.js
    ├── package.json
    └── README.md
```

---

## 🟢 SQL Fundamentals

Core PostgreSQL and SQL concepts through small database projects.

| Project                                                                     | Focus                                                                                  |
| --------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| [Student Management System](SQL_Fundamentals/Student_Management_System-SQL) | Database creation, inserting records, basic querying, filtering, sorting, and limiting |
| [Online Retail Management](SQL_Fundamentals/Online-Retail-Management)       | CRUD operations, `DISTINCT`, `NULL` handling, `CASE WHEN`, filtering, and sorting      |

### Concepts Covered

* `CREATE TABLE`
* `INSERT INTO`
* `SELECT`
* `WHERE`
* `ORDER BY`
* `LIMIT`
* `DISTINCT`
* `UPDATE`
* `DELETE`
* `NULL` handling
* `CASE WHEN`
* Basic CRUD operations

---

## 🟡 Intermediate SQL

Intermediate-level SQL focused on **aggregation and relational database relationships**.

| Project                                                                                       | Focus                                               |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------- |
| [Company HR Analytics](Intermediate%20SQL/Company-HR-Analytics-SQL)                           | Employee and department analytics using aggregation |
| [University Course Enrollment System](Intermediate%20SQL/University-Course-Enrollment-System) | SQL JOINs and relational database relationships     |

### Concepts Covered

* `GROUP BY`
* `HAVING`
* `COUNT`
* `SUM`
* `AVG`
* `MIN`
* `MAX`
* `COUNT(DISTINCT)`
* Conditional aggregation
* `CASE` inside aggregate functions
* `INNER JOIN`
* `LEFT JOIN`
* `RIGHT JOIN`
* `FULL OUTER JOIN`
* `SELF JOIN`
* `CROSS JOIN`
* Primary Keys
* Foreign Keys
* One-to-One relationships
* One-to-Many relationships
* Many-to-Many relationships

---

## 🟠 SQL Advanced

Advanced SQL techniques for writing complex, reusable, and analytical queries.

| Project                                                                   | Focus                                                    |
| ------------------------------------------------------------------------- | -------------------------------------------------------- |
| [CTEs & Subqueries](SQL%20Advanced/cte-subqueries-sql)                    | CTEs, recursive queries, and different subquery patterns |
| [Customer Data Integration](SQL%20Advanced/customer-data-integration-sql) | SQL Set Operations                                       |
| [Views & Constraints](SQL%20Advanced/views-constraints-sql)               | Data integrity, Views, and Materialized Views            |
| [Window Functions](SQL%20Advanced/window-functions-sql)                   | Analytical SQL using Window Functions                    |

### Concepts Covered

#### CTEs & Subqueries

* Common Table Expressions
* Multiple CTEs
* Nested CTEs
* Recursive CTEs
* Scalar Subqueries
* Correlated Subqueries
* `EXISTS`
* `NOT EXISTS`
* `IN`
* `ANY`
* `ALL`

#### Set Operations

* `UNION`
* `UNION ALL`
* `INTERSECT`
* `EXCEPT`

#### Views & Constraints

* `PRIMARY KEY`
* `FOREIGN KEY`
* `UNIQUE`
* `NOT NULL`
* `CHECK`
* `DEFAULT`
* `CREATE VIEW`
* `DROP VIEW`
* Materialized Views

#### Window Functions

* `OVER()`
* `PARTITION BY`
* `ORDER BY`
* `ROW_NUMBER()`
* `RANK()`
* `DENSE_RANK()`
* `NTILE()`
* `LAG()`
* `LEAD()`
* `FIRST_VALUE()`
* `LAST_VALUE()`
* Window Frames
* Running Totals
* Moving Averages
* Cumulative Calculations

---

## 🟣 PostgreSQL Features

PostgreSQL-specific capabilities beyond standard SQL.

| Project                                                                               | Focus                                                                 |
| ------------------------------------------------------------------------------------- | --------------------------------------------------------------------- |
| [PostgreSQL Advanced Data Types](PostgreSQL%20Features/PostgreSQL-Advanced-DataTypes) | UUID, JSONB, Arrays, and PostgreSQL operators                         |
| [PostgreSQL Programming](PostgreSQL%20Features/PostgreSQL-Programming)                | Functions, Procedures, Triggers, and Audit Logging                    |
| [PostgreSQL Transactions](PostgreSQL%20Features/PostgreSQL-Transactions)              | Transactions, ACID, Savepoints, Isolation Levels, and Row-Level Locks |

### Concepts Covered

* UUID
* JSONB
* Arrays
* JSON Operators
* Array Operators
* PL/pgSQL
* PostgreSQL Functions
* Stored Procedures
* Trigger Functions
* BEFORE Triggers
* AFTER Triggers
* Audit Logging
* `BEGIN`
* `COMMIT`
* `ROLLBACK`
* `SAVEPOINT`
* ACID Principles
* Transaction Isolation
* Row-Level Locking
* `FOR UPDATE`

---

## 🔴 SQL Performance Projects

Projects focused on understanding **query execution, indexing, and SQL optimization**.

| Project                                                                                       | Focus                                                       |
| --------------------------------------------------------------------------------------------- | ----------------------------------------------------------- |
| [SQL Index Performance Lab](SQL%20Performance%20Projects/SQL-Index-Performance-Lab)           | Understanding indexes and their effect on query performance |
| [SQL Query Performance Analyzer](SQL%20Performance%20Projects/SQL-Query-Performance-Analyzer) | Execution plans and query optimization                      |

### Concepts Covered

* `CREATE INDEX`
* `DROP INDEX`
* B-Tree Index
* Hash Index
* PostgreSQL `CLUSTER`
* `EXPLAIN`
* `EXPLAIN ANALYZE`
* Sequential Scans
* Index Scans
* Execution Plans
* Query Optimization
* Performance Comparison

The performance projects use large generated datasets to make query and index performance differences observable.

---

## 🔵 PostgreSQL + Backend Integration

This project connects PostgreSQL knowledge with a real **Node.js REST API**, demonstrating how database systems are used inside backend applications.

### [Social Network API — PostgreSQL Migration Project](social-repo-Migration-Project)

A Node.js backend project demonstrating:

* PostgreSQL database integration
* Database migrations
* `node-pg-migrate`
* PostgreSQL Client
* Connection Pooling
* Repository Pattern
* CRUD operations
* REST API development
* Route → Repository architecture
* Automated API testing
* Environment-based database configuration

### Architecture

```text
HTTP Request
      ↓
    Route
      ↓
 Repository
      ↓
PostgreSQL Pool
      ↓
PostgreSQL Database
```

### Database Migrations

The project uses **node-pg-migrate** to manage database schema changes.

```text
Create Migration
       ↓
Run Migration
       ↓
Database Updated
       ↓
Commit Migration
       ↓
Version Controlled
```

Migrations also provide reversible database changes through `up` and `down` operations.

### Repository Pattern

Database operations are separated from API route handlers through a repository layer.

```text
GET /users
      ↓
repository.find()

GET /users/:id
      ↓
repository.findById()

POST /users
      ↓
repository.insert()

PUT /users/:id
      ↓
repository.update()

DELETE /users/:id
      ↓
repository.delete()
```

### Concepts Practiced

* Node.js + PostgreSQL
* PostgreSQL connection management
* Connection pooling
* Repository architecture
* REST APIs
* CRUD operations
* Database migrations
* Version-controlled schema changes
* Reversible migrations
* API testing
* Backend project structure

This project represents the transition from **working with PostgreSQL directly** to **using PostgreSQL as part of a real backend application**.

---

## 📸 Instagram Database

The **Instagram Database** is a larger PostgreSQL project that combines database design, relational modeling, querying, indexing, and advanced query optimization.

It models an Instagram-like social media platform with entities such as:

* Users
* Posts
* Comments
* Likes
* Followers
* Photo Tags
* Caption Tags
* Hashtags
* Hashtag/Post Relationships

### Advanced Concepts Practiced

* Relational Database Design
* Primary Keys
* Foreign Keys
* Constraints
* SQL JOINs
* Aggregation
* Indexes
* `EXPLAIN`
* `EXPLAIN ANALYZE`
* PostgreSQL System Catalogs
* Views
* CTEs
* Recursive CTEs
* Materialized Views
* Query Optimization

### Project Structure

```text
Instagram Database/
│
├── ERD/
│   └── instagram_erd.png
│
├── Schema/
│   └── tables.sql
│
├── data/
│   └── ig.sql
│
├── queries/
│   ├── basic_queries.sql
│   ├── advanced_queries.sql
│   └── query_optimization/
│       ├── simplifying_queries_with_views.sql
│       ├── simple_common_table_expressions.sql
│       ├── recursive_common_table_expressions.sql
│       └── optimizing_queries_with_materialized_view.sql
```

---

## 🧱 Common Project Structure

Most SQL projects follow a consistent structure:

```text
project-name/
│
├── README.md
├── schema.sql
├── data.sql
├── queries.sql
└── screenshots/
```

Some PostgreSQL-specific projects contain additional SQL files depending on the topic.

For example:

```text
PostgreSQL-Programming/
├── schema.sql
├── data.sql
├── functions.sql
├── procedures.sql
├── triggers.sql
└── screenshots/
```

Performance projects additionally contain files such as:

```text
SQL-Index-Performance-Lab/
├── schema.sql
├── data.sql
├── indexes.sql
├── queries.sql
└── explain_examples.sql
```

Backend integration projects may contain:

```text
social-repo-Migration-Project/
├── migrations/
├── src/
│   ├── repos/
│   ├── routes/
│   └── test/
├── index.js
├── package.json
└── README.md
```

---

## 🛠️ Tech Stack

### Database

* **PostgreSQL**
* SQL
* PL/pgSQL

### Database Tools

* pgAdmin
* `psql`

### Backend Integration

* Node.js
* REST API
* PostgreSQL Client
* Connection Pool
* `node-pg-migrate`
* npm

### Development Tools

* Git
* GitHub

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/connectwithaadi/SQL-Projects.git
cd SQL-Projects
```

### 2. Choose a Project

Navigate into any project directory.

Example:

```bash
cd SQL_Fundamentals/Online-Retail-Management
```

### 3. Create the Database

Each project README specifies its database name.

Example:

```sql
CREATE DATABASE online_retail;
```

### 4. Create Tables

```sql
\i schema.sql
```

### 5. Load Sample Data

```sql
\i data.sql
```

### 6. Run Queries

```sql
\i queries.sql
```

For projects containing additional SQL or backend files, follow the instructions in that project's README.

---

## 📈 Learning Progression

The repository follows this progression:

```text
SQL Fundamentals
       ↓
Intermediate SQL
       ↓
Advanced SQL
       ↓
PostgreSQL Features
       ↓
Query Performance & Optimization
       ↓
PostgreSQL + Backend Integration
       ↓
Realistic Database Applications
```

This progression builds from basic SQL syntax toward the database skills required for:

* Analytics
* Backend Development
* Data Engineering
* Machine Learning
* AI Engineering

---

## 🎯 Learning Goals

Through these projects, I am building practical skills in:

* Relational database design
* SQL querying
* Data manipulation
* Aggregation and analytics
* Database relationships
* Advanced SQL
* PostgreSQL-specific features
* Transaction management
* Query optimization
* Indexing
* Execution plan analysis
* Database migrations
* Backend database integration
* REST API development
* Repository-based database architecture
* Data preparation
* Database fundamentals for AI/ML systems

These foundations support the broader **AI Engineer roadmap**, where programming, databases, backend systems, and deployment form the foundation for building reliable AI applications.

---

## 🧠 Why SQL Matters for AI Engineering

SQL is an important foundation for AI Engineering because AI systems frequently depend on structured data stored in relational databases.

Strong SQL skills help with:

* Extracting training and evaluation data
* Cleaning and transforming datasets
* Building data pipelines
* Creating analytics queries
* Working with application databases
* Understanding production data systems
* Preparing data for Machine Learning workflows
* Building AI applications connected to real-world databases

---

## 📊 Project Progress

| Section                          | Projects |
| -------------------------------- | -------: |
| Instagram Database               |        1 |
| SQL Fundamentals                 |        2 |
| Intermediate SQL                 |        2 |
| SQL Advanced                     |        4 |
| PostgreSQL Features              |        3 |
| SQL Performance Projects         |        2 |
| PostgreSQL + Backend Integration |        1 |
| **Total**                        |   **15** |

---

## 🚀 Purpose

This repository is a practical learning log of my **PostgreSQL and SQL journey**.

The goal is not only to learn SQL syntax, but to understand how databases are:

* Designed
* Queried
* Optimized
* Managed
* Integrated with backend applications
* Used in real software and data workflows

The projects progressively move from **database fundamentals to production-oriented database concepts**, including migrations, connection pooling, repository architecture, API integration, and testing.

This forms part of my broader journey toward becoming an **AI Engineer**, where strong foundations in programming, databases, backend systems, and deployment are built before progressing into advanced AI systems.

---

## 👨‍💻 Author

**Aditya Kumar Singh**

Building skills through hands-on projects, one system at a time. 🚀
