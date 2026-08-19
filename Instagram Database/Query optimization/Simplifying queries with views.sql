-- ============================================================
-- Simplifying Queries with Views
-- ============================================================


-- ============================================================
-- 1. Create a Unified Tags View
-- ============================================================

CREATE VIEW tags AS
SELECT
    id,
    created_at,
    user_id,
    post_id,
    'photo_tag' AS type
FROM photo_tags

UNION ALL

SELECT
    id,
    created_at,
    user_id,
    post_id,
    'caption_tag' AS type
FROM caption_tags;


-- Query caption tags from the unified view

SELECT *
FROM tags
WHERE type = 'caption_tag';


-- ============================================================
-- 2. Create a View for the 10 Most Recent Posts
-- ============================================================

CREATE VIEW recent_posts AS
SELECT *
FROM posts
ORDER BY created_at DESC
LIMIT 10;


-- Query the recent posts

SELECT *
FROM recent_posts;


-- ============================================================
-- 3. Get Usernames of Users Who Created Recent Posts
-- ============================================================

SELECT
    users.username
FROM recent_posts
JOIN users
    ON users.id = recent_posts.user_id;


-- ============================================================
-- 4. Replace the Recent Posts View
-- ============================================================
--
-- Change the view from the 10 most recent posts
-- to the 15 most recent posts.
--

CREATE OR REPLACE VIEW recent_posts AS
SELECT *
FROM posts
ORDER BY created_at DESC
LIMIT 15;


-- Verify the updated view

SELECT *
FROM recent_posts;


-- ============================================================
-- 5. Delete the View
-- ============================================================

DROP VIEW recent_posts;