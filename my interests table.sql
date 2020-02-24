create table my_interests 
(interests varchar(100),
interest1 varchar(50),
interest2 varchar(50),
interest3 varchar(50)
); 

insert into my_interests (interests)
select interests from my_contacts_old
group by interests
order by interests;

UPDATE my_interests SET
interest1 = SUBSTRING_INDEX(interests, ',', 1),
interests = SUBSTR(interests, LENGTH(interest1)+2);

UPDATE my_interests SET
interest3 = SUBSTRING_INDEX(interests, ',', 1),
interests = SUBSTR(interests, LENGTH(interest3)+2);


drop table my_interests;