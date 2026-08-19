-- ============================================================
-- Advanced PostgreSQL Queries
-- ============================================================


-- ============================================================
-- 1. PostgreSQL Database Information
-- ============================================================

SHOW data_directory;

SELECT
    oid,
    datname
FROM pg_database;

SELECT *
FROM pg_class;


-- ============================================================
-- 2. Index Management
-- ============================================================

CREATE INDEX users_username_idx
ON users(username);

DROP INDEX users_username_idx;


-- ============================================================
-- 3. Query Benchmarking
-- ============================================================

EXPLAIN ANALYZE
SELECT *
FROM users
WHERE username = 'Emil30';


DROP INDEX users_username_idx;

EXPLAIN ANALYZE
SELECT *
FROM users
WHERE username = 'Emil30';


-- ============================================================
-- 4. Index Size
-- ============================================================

CREATE INDEX users_username_idx
ON users(username);

SELECT pg_size_pretty(
    pg_relation_size('users_username_idx')
);


-- ============================================================
-- 5. PostgreSQL Automatically Generated Indexes
-- ============================================================

SELECT
    relname,
    relkind
FROM pg_class
WHERE relkind = 'i';


-- ============================================================
-- 6. Basic Query Tuning
-- ============================================================

EXPLAIN
SELECT
    users.username,
    comments.content
FROM users
JOIN comments
    ON comments.user_id = users.id
WHERE users.username = 'Alyson14';


EXPLAIN ANALYZE
SELECT
    users.username,
    comments.content
FROM users
JOIN comments
    ON comments.user_id = users.id
WHERE users.username = 'Alyson14';


-- ============================================================
-- 7. PostgreSQL Table Statistics
-- ============================================================

SELECT *
FROM pg_stats
WHERE tablename = 'users';


-- ============================================================
-- 8. Advanced Query Tuning
-- ============================================================

EXPLAIN
SELECT *
FROM likes
WHERE created_at > '2013-01-10';


CREATE INDEX likes_created_at_idx
ON likes(created_at);