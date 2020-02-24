insert into interests (interest)
select interest1 from my_interests
where interest1 <> ''
group by interest1;

insert into interests (interest)
select interest2 from my_interests
where interest2 <> ''
group by interest2;

insert into interests (interest)
select interest3 from my_interests
where interest3 <> ''
group by interest3;