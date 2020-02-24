SELECT * FROM gregs_list.my_contacts;

SELECT SUBSTRING('San Antonio, TX', 5, 3);
SELECT UPPER('uSa');
SELECT LOWER('spaGHEtti');
SELECT REVERSE('spaGHEtti');
SELECT LTRIM(' dogfood ');
SELECT RTRIM(' catfood ');
SELECT LENGTH('San Antonio, TX ');

ALTER TABLE my_contacts
ADD COLUMN state CHAR(2) AFTER location;

UPDATE my_contacts
SET state = RIGHT(location, 2);

UPDATE my_contacts
SET location = SUBSTRING_INDEX(location,',', 1);

ALTER TABLE my_contacts
CHANGE COLUMN location city VARCHAR(50);


