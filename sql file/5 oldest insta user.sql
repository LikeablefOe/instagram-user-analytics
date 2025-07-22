# Loyal User Reward

USE ig_clone;

WITH ranked_users AS (
  SELECT *, 
         ROW_NUMBER() OVER (PARTITION BY username ORDER BY created_at ASC) AS rn
  FROM users
)
SELECT id, username, created_at
FROM ranked_users
WHERE rn = 1
ORDER BY created_at
LIMIT 5;

