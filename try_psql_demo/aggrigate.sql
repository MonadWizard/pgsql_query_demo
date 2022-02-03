-- SELECT user_id FROM comments GROUP BY user_id;

-- aggretate functions
-- SELECT MAX(user_id), MIN(id), COUNT(contents), SUM(user_id) FROM comments;

-- aggretate with group by work together
-- SELECT user_id, MAX(id) FROM comments GROUP BY user_id;

-- count comment per photo
-- SELECT count(*)
-- FROM comments 
-- JOIN photos ON comments.photo_id=photos.id
-- GROUP BY comments.photo_id

-- count user-name post totla photos
SELECT users.username, count(*)
FROM users
JOIN photos ON photos.user_id=users.id
GROUP BY users.username












