use gregs_list;

SELECT status FROM my_contacts
GROUP BY status
ORDER BY status;

SELECT profession FROM my_contacts
GROUP BY profession
ORDER BY profession;

SELECT seeking FROM my_contacts
GROUP BY seeking
ORDER BY seeking;

CREATE TABLE contact_interest (
contact_id int NOT NULL,
interest_id int NOT NULL,
PRIMARY KEY (contact_id, interest_id),
FOREIGN KEY (contact_id) REFERENCES my_contacts_id(contact_id),
FOREIGN KEY (interest_id) REFERENCES interests(int_id)
);

CREATE TABLE contact_seeking (
contact_id int NOT NULL,
seeking_id int NOT NULL,
PRIMARY KEY (contact_id, seeking_id),
FOREIGN KEY (contact_id) REFERENCES my_contacts_id(contact_id),
FOREIGN KEY (seeking_id) REFERENCES seeking(seeking_id)
);

CREATE TABLE my_contacts_id (
  contact_id int(11) NOT NULL AUTO_INCREMENT,
  last_name varchar(30) DEFAULT NULL,
  first_name varchar(20) DEFAULT NULL,
  phone varchar(11) DEFAULT NULL,
  email varchar(50) DEFAULT NULL,
  gender char(1) DEFAULT NULL,
  birthday date DEFAULT NULL,
  prof_id INT(11) NOT NULL, 
  zip_code INT(11) NOT NULL,
  status_id INT(11)NOT NULL,   
  PRIMARY KEY (contact_id),
  FOREIGN KEY (prof_id) REFERENCES profession(prof_id),
  FOREIGN KEY (zip_code) REFERENCES zip_code(zip_code),
  FOREIGN KEY (status_id) REFERENCES status(status_id)
);

CREATE TABLE profession
(
 prof_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 profession VARCHAR(50) DEFAULT NULL
)

CREATE TABLE seeking
(
 seeking_id INT(11) NOT NULL AUTO_INCREMENT,
 seeking VARCHAR(100) DEFAULT NULL,
 PRIMARY KEY(seeking_id)
)

CREATE TABLE status
(
 status_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 status VARCHAR(20) DEFAULT NULL
)

CREATE TABLE zip_code
(
 zip_code INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 city VARCHAR(50) DEFAULT NULL,
 state VARCHAR(2) DEFAULT NULL
)

CREATE TABLE interest
(
 interest_id INT(11) NOT NULL AUTO_INCREMENT,
 interest VARCHAR(100) DEFAULT NULL,
 PRIMARY KEY(interest_id)
);

INSERT INTO profession (profession)
SELECT profession FROM my_contacts
GROUP BY profession
ORDER BY profession;

INSERT INTO interest (interest)
SELECT interests FROM my_contacts
GROUP BY interests
ORDER BY interests;

INSERT INTO seeking (seeking)
SELECT seeking FROM my_contacts
GROUP BY seeking
ORDER BY seeking;

INSERT INTO status (status)
SELECT status FROM my_contacts
GROUP BY status
ORDER BY status;

CREATE TABLE profession AS
SELECT profession FROM my_contacts
GROUP BY profession
ORDER BY profession;
ALTER TABLE profession
ADD COLUMN id INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (id);

INSERT INTO zip_code (city, state)
SELECT city, state FROM my_contacts
GROUP BY city;

ALTER TABLE my_contacts
DROP COLUMN profession;

ALTER TABLE my_contacts
DROP COLUMN seeking;

ALTER TABLE my_contacts
DROP COLUMN interests;

ALTER TABLE my_contacts
DROP COLUMN city;

ALTER TABLE my_contacts
DROP COLUMN status;

ALTER TABLE my_contacts
ADD COLUMN prof_id INT(3);


ALTER TABLE my_contacts
ADD CONSTRAINT fk_my_contacts FOREIGN KEY (prof_id)
REFERENCES profession (prof_id);

ALTER TABLE my_contacts
ADD COLUMN status_id INT(3);

ALTER TABLE my_contacts
ADD CONSTRAINT fk_my_contacts FOREIGN KEY (status_id)
REFERENCES status (status_id);

ALTER TABLE my_contacts
ADD COLUMN zip_code INT(3) after status_id;

ALTER TABLE my_contacts
ADD CONSTRAINT my_contacts_fk FOREIGN KEY (zip_code)
REFERENCES zip_code (zip_code);

ALTER TABLE my_contacts
ADD COLUMN status_id INT(3) after prof_id;

ALTER TABLE my_contacts
ADD CONSTRAINT my_fk_contacts FOREIGN KEY (status_id)
REFERENCES status (status_id);

ALTER TABLE my_contacts
DROP COLUMN zip_code;



