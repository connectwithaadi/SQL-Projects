-- ============================================================
-- Recursive Common Table Expressions
-- ============================================================


-- ============================================================
-- 1. Basic Recursive CTE Example
-- ============================================================

WITH RECURSIVE countdown(val) AS (

    -- Initial / non-recursive query
    SELECT 3 AS val

    UNION

    -- Recursive query
    SELECT val - 1
    FROM countdown
    WHERE val > 1
)

SELECT *
FROM countdown;


-- ============================================================
-- 2. User Suggestions Using Recursive CTE
-- ============================================================
--
-- Find users connected through follower relationships.
-- The recursion explores up to 3 levels of relationships.
--
-- follower_id = 1000
-- depth > 1 ensures that direct followers are excluded
-- from the final suggestions.
--

WITH RECURSIVE suggestions (
    leader_id,
    follower_id,
    depth
) AS (

    -- Initial level
    SELECT
        leader_id,
        follower_id,
        1 AS depth
    FROM followers
    WHERE follower_id = 1000

    UNION

    -- Recursive levels
    SELECT
        followers.leader_id,
        followers.follower_id,
        suggestions.depth + 1
    FROM followers
    JOIN suggestions
        ON suggestions.leader_id = followers.follower_id
    WHERE suggestions.depth < 3
)

SELECT DISTINCT
    users.id,
    users.username
FROM suggestions
JOIN users
    ON users.id = suggestions.leader_id
WHERE suggestions.depth > 1
LIMIT 30;