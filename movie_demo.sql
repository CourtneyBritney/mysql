CREATE TABLE movie_table_demo (
`movie_id` int(11) NOT NULL AUTO_INCREMENT,
`title` varchar(45) NOT NULL,
`rating` char(1) NOT NULL,
`drama` char(1) NOT NULL,
`comedy` char(1) NOT NULL,
`action` char(1) NOT NULL,
`gore` char(1) NOT NULL,
`scifi` char(1) NOT NULL,
`for_kids` char(1) NOT NULL,
`cartoon` char(1) NOT NULL,
`published` date NOT NULL,
PRIMARY KEY (`movie_id`)
) ;

INSERT INTO movie_table_demo
(movie_id,title,rating,drama,comedy,action,gore,scifi,for_kids,cartoon,published)
VALUES
(1,"Monsters Inc.",'G','F','T','F','F','F','T','T','2002-06-03'),
(2,"The Godfather",'R','F','F','T','T','F','F','F','2001-02-05'),
(3,"Gone with the Wind",'G','T','F','F','F','F','F','F','1999-11-20'),
(4,"American Pie",'R','F','T','F','F','F','F','F','2003-04-19'),
(5,"Nightmare on Elm Street",'R','F','F','T','T','F','F','F','2003-04-19'),
(6,"Casablanca",'P','T','F','F','F','F','F','F','2001-02-05')

ALTER TABLE movie_table_demo
ADD COLUMN category VARCHAR(30) AFTER cartoon;

drop table movie_table_demo;

ALTER TABLE movie_table_demo
DROP COLUMN category;

UPDATE movie_table_demo
SET category =
CASE
WHEN drama = 'T' THEN 'drama'
WHEN comedy = 'T' THEN 'comedy'
WHEN action = 'T' THEN 'action'
WHEN gore = 'T' THEN 'horror'
WHEN scifi = 'T' THEN 'scifi'
WHEN for_kids = 'T' THEN 'family'
WHEN cartoon = 'T' AND rating = 'G' THEN 'family'
ELSE 'misc'
END;

