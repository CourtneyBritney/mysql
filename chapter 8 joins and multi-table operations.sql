CREATE TABLE `boys` (
  `boy_id` int(11) default NULL,
  `boy` varchar(20) default NULL,
  `toy_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('1','Davey','3');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('2','Bobby','5');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('3','Beaver','2');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('4','Richie','1');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('6','Johnny','4');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('5','Billy','2');

use drinks;

CREATE TABLE `toys` (
  `toy_id` int(11) default NULL,
  `toy` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('1','hula hoop');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('2','balsa glider');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('3','toy soldiers');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('4','harmonica');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('5','baseball cards');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('6','tinker toys');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('7','etch-a-sketch');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('8','slinky');

SELECT t.toy, b.boy
FROM toys AS t
CROSS JOIN
boys AS b;

use gregs_list;

SELECT p.profession, f.first_name
FROM profession AS p
CROSS JOIN
my_contacts AS f;

SELECT mc.last_name,
mc.first_name,
p.profession
FROM my_contacts AS mc
INNER JOIN
profession AS p
ON mc.prof_id = p.prof_id;
use drinks;
SELECT boys.boy, toys.toy
FROM boys
INNER JOIN
toys
ON boys.toy_id = toys.toy_id;
use gregs_list;


SELECT e.email , p.profession
FROM my_contacts AS e
inner join profession as p
ON e.prof_id = p.prof_id;

SELECT mc.first_name,
mc.last_name,
s.status
FROM my_contacts AS mc
INNER JOIN
status AS s
ON mc.status_id = s.status_id;

SELECT mc.first_name,
mc.last_name,
zc.state
FROM my_contacts AS mc
INNER JOIN
zip_code AS zc
ON mc.zip_code = zc.zip_code;
use drinks;
SELECT boys.boy, toys.toy
FROM boys
INNER JOIN
toys
ON boys.toy_id <> toys.toy_id
ORDER BY boys.boy;

SELECT boys.boy, toys.toy
FROM boys
NATURAL JOIN
toys;
use gregs_list;
SELECT mc.email, profession.profession
FROM my_contacts as mc
NATURAL JOIN
profession;

SELECT mc.first_name, mc.last_name, s.status
FROM my_contacts as mc
INNER JOIN
status as s
ON mc.status_id <> s.status_id;

SELECT mc.first_name,
mc.last_name,
zc.state
FROM my_contacts AS mc
NATURAL JOIN
zip_code AS zc;
use gregs_list;
SELECT mc.first_name, mc.last_name
FROM my_contacts as mc
INNER JOIN
contact_interest as ci
ON mc.contact_id = ci.interest_id;

SELECT mc.first_name,
mc.last_name,
i.interest
FROM my_contacts AS mc
NATURAL JOIN
interest AS i;

SELECT contact_seeking
FROM table1
INNER JOIN
table2
ON somecondition;
