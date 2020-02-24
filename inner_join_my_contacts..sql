

use gregs_list;
SELECT my_contacts.contact_id, profession.prof_id
FROM my_contacts
INNER JOIN
profession
ON my_contacts.contact_id = profession.prof_id;