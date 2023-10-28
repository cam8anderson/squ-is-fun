SELECT SUM(total) FROM invoice GROUP BY billing_state
SELECT avg(milliseconds) from track GROUP BY album_id 
SELECT COUNT(*) FROM album WHERE artist_id in (8, 22) GROUP BY artist_id