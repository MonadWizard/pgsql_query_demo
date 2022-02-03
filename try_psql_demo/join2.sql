-- Inner Joni not return null
-- SELECT photos.id, username,url, users.id as u_id FROM photos JOIN users ON photos.user_id=users.id;

-- INSERT INTO photos(url, user_id) VALUES ('https://new.com/1.jpg', NULL);

-- Left join return left table's null data
-- SELECT photos.id, username,url, users.id as u_id FROM photos LEFT JOIN users ON photos.user_id=users.id;

-- Right join return right table's null data
-- SELECT photos.id, username,url, users.id as u_id FROM photos RIGHT JOIN users ON photos.user_id=users.id;

-- full join return all rows with all null separate row
-- SELECT photos.id, username,url, users.id as u_id FROM photos FULL JOIN users ON photos.user_id=users.id;

-- WHO is comenting on their own photos?
SELECT comments.user_id, comments.contents, users.username
FROM comments 
JOIN photos ON comments.photo_id=photos.id
JOIN users ON users.id=comments.user_id AND users.id=photos.user_id
WHERE comments.user_id=photos.user_id;





