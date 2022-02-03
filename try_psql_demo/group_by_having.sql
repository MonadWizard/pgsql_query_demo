-- find the number of comments for each photo where the photo_id is less than 3 
-- and the photo has more than 2 comments

-- SELECT comments.photo_id, COUNT(*)
-- FROM comments
-- WHERE comments.photo_id < 3
-- GROUP BY photo_id
-- HAVING COUNT(*) > 10;


-- Find the users(user_ids) where the user has commented on the first 50 photos
-- and the user added more than 20 comments on those photos

SELECT comments.user_id , count(*)
FROM comments
WHERE comments.photo_id<50
GROUP BY comments.user_id
HAVING count(*) > 20












