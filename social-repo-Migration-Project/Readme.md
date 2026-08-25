# 🚀 Social Network API — PostgreSQL Migration Project

A Node.js backend project demonstrating how to build a REST API with **PostgreSQL migrations, connection pooling, repository pattern, CRUD operations, and automated testing**.

The project uses a simple social-network-style `users` table to demonstrate how a Node.js application communicates with PostgreSQL and how database operations can be organized using a repository layer.

---

## 📌 Project Overview

This project focuses on connecting a Node.js application to PostgreSQL and building a clean, structured database access layer.

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

The project also demonstrates database migrations using **node-pg-migrate**, allowing database schema changes to be version-controlled and applied consistently across environments.

---

## 🧠 Concepts Covered

* Node.js REST API
* PostgreSQL
* Database migrations
* `node-pg-migrate`
* PostgreSQL Client
* PostgreSQL Connection Pool
* Repository Pattern
* Query Builder concepts
* ORM concepts
* CRUD Operations
* Route → Repository architecture
* Automated API testing
* Database schema management
* Environment-based database configuration

---

## 🏗️ Project Architecture

```text
                 Node.js API
                      │
                      ▼
                   Routes
                      │
                      ▼
              User Repository
                      │
                      ▼
              PostgreSQL Pool
                      │
                      ▼
                 PostgreSQL
```

The repository layer separates database operations from route handlers, making the application easier to organize, maintain, and test.

---

## 🗄️ Database

The project uses a PostgreSQL database named:

```text
socialnetwork
```

The main table demonstrated in the project is:

```text
users
```

### Users Table

| Column       | Description                         |
| ------------ | ----------------------------------- |
| `id`         | Unique user identifier              |
| `created_at` | Timestamp when the user was created |
| `updated_at` | Timestamp when the user was updated |
| `bio`        | User biography                      |
| `username`   | User's username                     |

The migration creates the table with:

* Serial primary key
* Timestamp fields with timezone support
* `bio` field
* Non-null `username`

---

## 🔄 Database Migrations

Database schema changes are managed using **node-pg-migrate**.

Instead of manually creating or modifying tables inside PostgreSQL, migrations allow schema changes to be stored as code and tracked through Git.

### Migration Structure

```text
migrations/
└── 1786799075262_add-users-table.js
```

Each migration provides two operations:

### `up`

Creates or modifies database structures.

```text
Migration
   │
   ├── up
   │    └── CREATE TABLE
   │
   └── down
        └── DROP TABLE
```

### `down`

Reverts the changes made by the migration.

This makes database schema changes **reversible and version-controlled**.

---

## 🔌 PostgreSQL Client vs Connection Pool

The project demonstrates the difference between using an individual PostgreSQL client and using a connection pool.

### PostgreSQL Client

A PostgreSQL client represents a single database connection.

```text
Node.js
   │
   │ SQL Query
   ▼
 Client
   │
   ▼
PostgreSQL
```

A client represents one database connection and is useful when working directly with a specific connection.

### Connection Pool

A connection pool maintains multiple reusable PostgreSQL connections.

```text
                 Node.js
                /       \
             SQL         SQL
              │           │
              ▼           ▼
        ┌─────────────────────┐
        │         Pool        │
        │                     │
        │      Client         │
        │      Client         │
        │      Client         │
        └──────────┬──────────┘
                   │
                   ▼
              PostgreSQL
```

Using a pool allows multiple database operations to efficiently reuse database connections.

---

## 📦 Repository Pattern

The project uses a **User Repository** to encapsulate database operations.

Instead of writing SQL directly inside route handlers, the routes communicate with repository methods.

### User Repository

| Function   | Purpose                                |
| ---------- | -------------------------------------- |
| `find`     | Return all users                       |
| `findById` | Find a user by ID                      |
| `insert`   | Create a new user                      |
| `update`   | Update a user by ID                    |
| `delete`   | Delete a user by ID                    |
| `findOne`  | Find one user using filtering criteria |
| `count`    | Return the number of users             |
| `validate` | Validate user properties               |

This separation keeps the API layer focused on HTTP requests while the repository handles database access.

---

## 🌐 API Routes

The project maps REST API routes to repository operations.

| Method   | Route        | Purpose            |
| -------- | ------------ | ------------------ |
| `GET`    | `/users`     | Fetch all users    |
| `GET`    | `/users/:id` | Fetch a user by ID |
| `POST`   | `/users`     | Create a new user  |
| `PUT`    | `/users/:id` | Update a user      |
| `DELETE` | `/users/:id` | Delete a user      |

### Route → Repository Mapping

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

---

## 🧪 Testing

The project contains a dedicated test structure:

```text
src/
├── repos/
├── routes/
└── test/
    └── routes/
```

Testing is used to verify API behavior and database-backed operations.

The repository architecture also makes it easier to isolate and test individual database operations.

---

## 📂 Project Structure

```text
social-repo-Migration-Project/
│
├── Screenshots/
│
├── migrations/
│   └── 1786799075262_add-users-table.js
│
├── src/
│   ├── repos/
│   │   └── User Repository
│   │
│   ├── routes/
│   │   └── User Routes
│   │
│   ├── test/
│   │   └── routes/
│   │
│   ├── app.js
│   └── pool.js
│
├── index.js
├── package.json
├── package-lock.json
└── README.md
```

---

## ⚙️ Environment Configuration

The application connects to PostgreSQL using a database connection URL.

Example:

```text
postgres://USERNAME:PASSWORD@localhost:5432/socialnetwork
```

For Windows CMD, the migration command can be run using:

```cmd
set DATABASE_URL=postgres://USERNAME:PASSWORD@localhost:5432/socialnetwork&&npm run migrate up
```

Replace:

```text
USERNAME
PASSWORD
```

with your PostgreSQL credentials.

> ⚠️ **Security:** Never commit real database credentials, passwords, or secrets to GitHub.

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/connectwithaadi/SQL-Projects.git
cd SQL-Projects/social-repo-Migration-Project
```

### 2. Install Dependencies

```bash
npm install
```

### 3. Create the PostgreSQL Database

Create a PostgreSQL database named:

```text
socialnetwork
```

### 4. Configure Database URL

Set your PostgreSQL connection string.

```text
postgres://USERNAME:PASSWORD@localhost:5432/socialnetwork
```

For Windows CMD:

```cmd
set DATABASE_URL=postgres://USERNAME:PASSWORD@localhost:5432/socialnetwork
```

### 5. Run Database Migration

Run the migration:

```bash
npm run migrate up
```

This creates the required database tables.

### 6. Start the Application

Run the Node.js application using the project's configured start command.

---

## 🔁 Migration Workflow

A typical database migration workflow looks like this:

```text
Modify Database Schema
          ↓
Create Migration
          ↓
Run Migration
          ↓
Database Updated
          ↓
Commit Migration to Git
```

To roll back a migration:

```bash
npm run migrate down
```

This allows database schema changes to be reverted when necessary.

---

## 🧩 Learning Progression

This project demonstrates the progression from a basic Node.js/PostgreSQL connection toward a more structured backend architecture.

```text
Node.js
   ↓
PostgreSQL Client
   ↓
Connection Pool
   ↓
Repository Pattern
   ↓
REST API Routes
   ↓
Database Migrations
   ↓
Testing
```

---

## 🎯 Learning Outcomes

Through this project, I practiced:

* Connecting Node.js applications with PostgreSQL
* Executing SQL queries from Node.js
* Understanding PostgreSQL clients
* Understanding connection pooling
* Designing a repository layer
* Separating routes from database logic
* Implementing CRUD operations
* Building REST API routes
* Managing database schema changes with migrations
* Creating reversible database migrations
* Structuring backend projects
* Writing and organizing API tests

---

## 💡 Why Database Migrations Matter

Database migrations are important in real-world backend applications because database schemas evolve over time.

Instead of manually changing every developer's database, migration files provide a repeatable and version-controlled process.

```text
Migration File
      ↓
Version Controlled
      ↓
Development
      ↓
Testing
      ↓
Production
```

This makes database changes:

* Reproducible
* Trackable
* Reversible
* Easier to maintain
* Safer to deploy

---

## 🛠️ Tech Stack

| Category        | Technology                          |
| --------------- | ----------------------------------- |
| Runtime         | Node.js                             |
| Database        | PostgreSQL                          |
| Migration Tool  | node-pg-migrate                     |
| API             | REST                                |
| Database Access | PostgreSQL Client / Connection Pool |
| Architecture    | Repository Pattern                  |
| Testing         | API / Route Tests                   |
| Package Manager | npm                                 |

---

## 📸 Screenshots

The `Screenshots/` directory contains diagrams and project screenshots covering:

* Node.js → PostgreSQL architecture
* PostgreSQL client
* Connection pooling
* Repository pattern
* REST route mapping
* Migration workflow
* Project structure

---

## 🚀 Purpose

This project is part of my backend and database learning journey toward **AI Engineering**.

The goal is to understand how production-style applications interact with databases, how database schemas are managed through migrations, and how database logic can be separated from API routes using clean architectural patterns.

These concepts provide a foundation for building:

* Backend APIs
* Data-driven applications
* AI application backends
* ML data services
* Production database systems

---

## 👨‍💻 Author

**Aditya Kumar Singh  **

GitHub: [@connectwithaadi](https://github.com/connectwithaadi)
