alter table my_contacts_old
add column state char(4) not null after location;

update my_contacts_old
set state = substring_index(location,',',-1);

update my_contacts_old
set location = substring_index(location,',',1);

