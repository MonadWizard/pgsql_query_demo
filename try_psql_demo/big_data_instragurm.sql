-- see most 3 user id
-- SELECT id
-- FROM users 
-- ORDER BY id DESC 
-- LIMIT 3;

-- SELECT COUNT(*)
-- FROM likes;

-- Join the users and posts table.
--Show the username of the user ID 200 and the captions of all posts they created

-- SELECT username, caption
-- FROM users
-- JOIN posts ON posts.user_id=users.id
-- WHERE posts.user_id=200;


-- SHOW each username and the like that they have created
SELECT username, count(*) as Likes
FROM users
JOIN likes ON likes.user_id=users.id
GROUP BY username;











