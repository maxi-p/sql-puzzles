-- Input: 
-- Person table:
-- +----+------------------+
-- | id | email            |
-- +----+------------------+
-- | 1  | john@example.com |
-- | 2  | bob@example.com  |
-- | 3  | john@example.com |
-- +----+------------------+

-- Output: 
-- +----+------------------+
-- | id | email            |
-- +----+------------------+
-- | 1  | john@example.com |
-- | 2  | bob@example.com  |
-- +----+------------------+

-- PostgreSQL query
WITH dup AS (
    SELECT email, MIN(id) AS keep_id
    FROM Person
    GROUP BY email
)
DELETE FROM Person
USING dup
WHERE Person.id != dup.keep_id AND Person.email = dup.email