-- ============================================================
-- Optimizing Queries with Materialized Views
-- ============================================================


-- ============================================================
-- 1. Group Likes by Week
-- ============================================================

SELECT
    date_trunc(
        'week',
        COALESCE(posts.created_at, comments.created_at)
    ) AS week,
    COUNT(posts.id) AS num_likes_for_posts,
    COUNT(comments.id) AS num_likes_for_comments
FROM likes
LEFT JOIN posts
    ON posts.id = likes.post_id
LEFT JOIN comments
    ON comments.id = likes.comment_id
GROUP BY week
ORDER BY week;


-- ============================================================
-- 2. Create a Materialized View
-- ============================================================

CREATE MATERIALIZED VIEW weekly_likes AS
SELECT
    date_trunc(
        'week',
        COALESCE(posts.created_at, comments.created_at)
    ) AS week,
    COUNT(posts.id) AS num_likes_for_posts,
    COUNT(comments.id) AS num_likes_for_comments
FROM likes
LEFT JOIN posts
    ON posts.id = likes.post_id
LEFT JOIN comments
    ON comments.id = likes.comment_id
GROUP BY week
ORDER BY week
WITH DATA;


-- ============================================================
-- 3. Query the Materialized View
-- ============================================================

SELECT *
FROM weekly_likes;


-- ============================================================
-- 4. Refresh the Materialized View
-- ============================================================

REFRESH MATERIALIZED VIEW weekly_likes;


-- ============================================================
-- 5. Verify Updated Materialized View
-- ============================================================

SELECT *
FROM weekly_likes;