alter table my_contacts
drop column contact;

update my_contacts
set prof_id = 4, status_id = 1, zip_code = 11
where contact_id = 16;

drop table my_contacts_id3;