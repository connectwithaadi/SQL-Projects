-- ============================================================
-- Instagram Database - Practice Queries
-- PostgreSQL
-- ============================================================
--
-- This file contains basic SQL queries for practicing:
--   1. Sorting and limiting results
--   2. INNER JOIN
--   3. GROUP BY and aggregate functions
--
-- ============================================================


-- ============================================================
-- 1. Get the Highest User IDs
-- ============================================================
--
-- Returns the 3 users with the highest IDs.
--

SELECT *
FROM users
ORDER BY id DESC
LIMIT 3;


-- ============================================================
-- 2. Get Posts Created by a Specific User
-- ============================================================
--
-- Show the username and captions of posts created
-- by user ID 200.
--

SELECT
    users.username,
    posts.caption
FROM users
JOIN posts
    ON posts.user_id = users.id
WHERE users.id = 200;


-- ============================================================
-- 3. Count Likes Created by Each User
-- ============================================================
--
-- Show each username along with the number of likes
-- they have created.
--

SELECT
    users.username,
    COUNT(likes.id) AS like_count
FROM users
JOIN likes
    ON likes.user_id = users.id
GROUP BY users.username;