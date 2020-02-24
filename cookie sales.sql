CREATE TABLE cookie_sales (
  ID int(11) NOT NULL auto_increment,
  first_name varchar(20) NOT NULL,
  sales decimal(4,2) NOT NULL,
  sale_date date NOT NULL,
  PRIMARY KEY  (ID)
);

INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('1','Lindsey',32.02,'2007-03-12');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('2','Nicole',26.53,'2007-03-12');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('3','Britney',11.25,'2007-03-12');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('4','Ashley',18.96,'2007-03-12');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('5','Lindsey',9.16,'2007-03-11');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('6','Nicole',1.52,'2007-03-11');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('7','Britney',43.21,'2007-03-11');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('8','Ashley',8.05,'2007-03-11');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('9','Lindsey',17.62,'2007-03-10');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('10','Nicole',24.19,'2007-03-10');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('11','Britney',3.40,'2007-03-10');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('12','Ashley',15.21,'2007-03-10');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('13','Lindsey',0.00,'2007-03-09');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('14','Nicole',31.99,'2007-03-09');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('15','Britney',2.58,'2007-03-09');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('16','Ashley',0.00,'2007-03-09');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('17','Lindsey',2.34,'2007-03-08');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('18','Nicole',13.44,'2007-03-08');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('19','Britney',8.78,'2007-03-08');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('20','Ashley',26.82,'2007-03-08');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('21','Lindsey',3.71,'2007-03-07');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('22','Nicole',0.56,'2007-03-07');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('23','Britney',34.19,'2007-03-07');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('24','Ashley',7.77,'2007-03-07');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('25','Lindsey',16.23,'2007-03-06');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('26','Nicole',0.00,'2007-03-06');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('27','Britney',4.50,'2007-03-06');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('28','Ashley',19.22,'2007-03-06');

SELECT first_name, sales
FROM cookie_sales
ORDER BY first_name;

SELECT SUM(sales)
FROM cookie_sales
WHERE first_name = 'Nicole';

SELECT first_name, SUM(sales)
FROM cookie_sales
GROUP BY first_name
ORDER BY SUM(sales)DESC;

SELECT first_name, AVG(sales)
FROM cookie_sales
GROUP BY first_name;

SELECT first_name, MIN(sales)
FROM cookie_sales
GROUP BY first_name;

SELECT COUNT(sale_date)
FROM cookie_sales;

SELECT DISTINCT sale_date
FROM cookie_sales
ORDER BY sale_date;

SELECT COUNT(DISTINCT sale_date)
FROM cookie_sales;

SELECT first_name, SUM(sales)
FROM cookie_sales
GROUP BY first_name
ORDER BY SUM(sales)DESC
LIMIT 2;

SELECT first_name, SUM(sales)
FROM cookie_sales
GROUP BY first_name
ORDER BY SUM(sales)DESC
LIMIT 0,4;