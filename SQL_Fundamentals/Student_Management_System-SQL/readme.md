# Student Management Database (PostgreSQL)

A beginner-friendly PostgreSQL project designed to practice core SQL concepts through a simple Student Management System.

This project is part of my AI Engineer learning journey, where I'm building strong database fundamentals before moving into backend development, Machine Learning, and AI applications.

---

## Features

- Create database tables
- Insert sample student records
- Execute basic SQL queries
- Filter, sort, and limit results
- Practice interview-oriented SQL

---

## Technologies Used

- PostgreSQL
- SQL

---

## Project Structure

```
Student-Management-Database/
│
├── schema.sql      # Database schema
├── data.sql        # Sample records
├── queries.sql     # SQL practice queries
└── README.md
```

---

## Database Schema

### students

| Column | Data Type |
|----------|-----------|
| student_id | SERIAL PRIMARY KEY |
| first_name | VARCHAR(50) |
| last_name | VARCHAR(50) |
| age | INT |
| gender | VARCHAR(10) |
| department | VARCHAR(50) |
| city | VARCHAR(50) |
| cgpa | DECIMAL(3,2) |

---

## Getting Started

### 1. Create Database

```sql
CREATE DATABASE student_management;
```

### 2. Connect to Database

```sql
\c student_management
```

### 3. Create Tables

```sql
\i schema.sql
```

### 4. Insert Sample Data

```sql
\i data.sql
```

### 5. Run Practice Queries

```sql
\i queries.sql
```

---

## Learning Outcome

This project helped me understand the fundamentals of PostgreSQL, including:

- CREATE TABLE
- INSERT INTO
- Basic SQL Queries
- 
## License

This project is open-source and available for learning purposes.
