UPDATE movie_table
SET category =
CASE
WHEN drama = 'T' AND rating = 'r' THEN 'drama'
WHEN comedy = 'T' AND rating = 'r' THEN 'comedy'
WHEN action = 'T' AND rating = 'r' THEN 'action'
WHEN gore = 'T' AND rating THEN 'horror'
WHEN scifi = 'T' THEN 'scifi'
WHEN for_kids = 'T' THEN 'family'
WHEN cartoon = 'T' THEN 'family'
ELSE 'misc'
END;

ALTER TABLE movie_table_demo
DROP COLUMN drama,
DROP COLUMN comedy,
DROP COLUMN action,
DROP COLUMN gore,
DROP COLUMN scifi,
DROP COLUMN for_kids,
DROP COLUMN cartoon;

SELECT title, category
FROM movie_table 
WHERE title LIKE 'A%';

SELECT title, category
FROM movie_table_demo
WHERE
title LIKE 'A%'
ORDER BY category;

