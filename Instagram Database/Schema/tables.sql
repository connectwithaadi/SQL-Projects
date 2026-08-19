-- ============================================================
-- Instagram Database Schema
-- PostgreSQL
-- ============================================================
--
-- This file contains the database structure for the
-- Instagram-like social media application.
--
-- Tables:
--   1. users
--   2. posts
--   3. comments
--   4. likes
--   5. followers
--   6. photo_tags
--   7. caption_tags
--   8. hashtags
--   9. hashtags_posts
--
-- ============================================================


-- ============================================================
-- 1. USERS
-- ============================================================

CREATE TABLE users (
    id SERIAL PRIMARY KEY,

    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

    username VARCHAR(30) NOT NULL,
    bio VARCHAR(400),
    avatar VARCHAR(200),
    phone VARCHAR(25),
    email VARCHAR(40),
    password VARCHAR(50),
    status VARCHAR(15),

    CONSTRAINT users_contact_check
        CHECK (COALESCE(phone, email) IS NOT NULL)
);


-- ============================================================
-- 2. POSTS
-- ============================================================

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,

    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

    url VARCHAR(200) NOT NULL,
    caption VARCHAR(240),

    lat REAL,
    lng REAL,

    user_id INTEGER NOT NULL,

    CONSTRAINT posts_user_fk
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE,

    CONSTRAINT posts_lat_check
        CHECK (lat IS NULL OR (lat >= -90 AND lat <= 90)),

    CONSTRAINT posts_lng_check
        CHECK (lng IS NULL OR (lng >= -180 AND lng <= 180))
);


-- ============================================================
-- 3. COMMENTS
-- ============================================================

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,

    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

    content VARCHAR(240) NOT NULL,

    user_id INTEGER NOT NULL,
    post_id INTEGER NOT NULL,

    CONSTRAINT comments_user_fk
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE,

    CONSTRAINT comments_post_fk
        FOREIGN KEY (post_id)
        REFERENCES posts(id)
        ON DELETE CASCADE
);


-- ============================================================
-- 4. LIKES
-- ============================================================

CREATE TABLE likes (
    id SERIAL PRIMARY KEY,

    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

    user_id INTEGER NOT NULL,
    post_id INTEGER,
    comment_id INTEGER,

    CONSTRAINT likes_user_fk
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE,

    CONSTRAINT likes_post_fk
        FOREIGN KEY (post_id)
        REFERENCES posts(id)
        ON DELETE CASCADE,

    CONSTRAINT likes_comment_fk
        FOREIGN KEY (comment_id)
        REFERENCES comments(id)
        ON DELETE CASCADE,

    -- A like must belong to either a post OR a comment,
    -- but never both.
    CONSTRAINT likes_target_check
        CHECK (
            (post_id IS NOT NULL)::INTEGER
            +
            (comment_id IS NOT NULL)::INTEGER
            = 1
        ),

    CONSTRAINT likes_unique_target
        UNIQUE (user_id, post_id, comment_id)
);


-- ============================================================
-- 5. FOLLOWERS
-- ============================================================

CREATE TABLE followers (
    id SERIAL PRIMARY KEY,

    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

    leader_id INTEGER NOT NULL,
    follower_id INTEGER NOT NULL,

    CONSTRAINT followers_leader_fk
        FOREIGN KEY (leader_id)
        REFERENCES users(id)
        ON DELETE CASCADE,

    CONSTRAINT followers_follower_fk
        FOREIGN KEY (follower_id)
        REFERENCES users(id)
        ON DELETE CASCADE,

    CONSTRAINT followers_unique_relationship
        UNIQUE (leader_id, follower_id)
);


-- ============================================================
-- 6. PHOTO TAGS
-- ============================================================

CREATE TABLE photo_tags (
    id SERIAL PRIMARY KEY,

    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

    user_id INTEGER NOT NULL,
    post_id INTEGER NOT NULL,

    x INTEGER NOT NULL,
    y INTEGER NOT NULL,

    CONSTRAINT photo_tags_user_fk
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE,

    CONSTRAINT photo_tags_post_fk
        FOREIGN KEY (post_id)
        REFERENCES posts(id)
        ON DELETE CASCADE,

    CONSTRAINT photo_tags_unique_tag
        UNIQUE (user_id, post_id)
);


-- ============================================================
-- 7. CAPTION TAGS
-- ============================================================

CREATE TABLE caption_tags (
    id SERIAL PRIMARY KEY,

    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

    user_id INTEGER NOT NULL,
    post_id INTEGER NOT NULL,

    CONSTRAINT caption_tags_user_fk
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE,

    CONSTRAINT caption_tags_post_fk
        FOREIGN KEY (post_id)
        REFERENCES posts(id)
        ON DELETE CASCADE,

    CONSTRAINT caption_tags_unique_tag
        UNIQUE (user_id, post_id)
);


-- ============================================================
-- 8. HASHTAGS
-- ============================================================

CREATE TABLE hashtags (
    id SERIAL PRIMARY KEY,

    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

    title VARCHAR(20) NOT NULL,

    CONSTRAINT hashtags_title_unique
        UNIQUE (title)
);


-- ============================================================
-- 9. HASHTAGS POSTS
-- ============================================================

CREATE TABLE hashtags_posts (
    id SERIAL PRIMARY KEY,

    hashtag_id INTEGER NOT NULL,
    post_id INTEGER NOT NULL,

    CONSTRAINT hashtags_posts_hashtag_fk
        FOREIGN KEY (hashtag_id)
        REFERENCES hashtags(id)
        ON DELETE CASCADE,

    CONSTRAINT hashtags_posts_post_fk
        FOREIGN KEY (post_id)
        REFERENCES posts(id)
        ON DELETE CASCADE,

    CONSTRAINT hashtags_posts_unique_relationship
        UNIQUE (hashtag_id, post_id)
);