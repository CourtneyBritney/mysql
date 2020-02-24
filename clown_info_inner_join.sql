SELECT ci.id, a.activity_id
FROM clown_info as ci
INNER JOIN
info_activities as ia
Inner JOIN
activities as a
ON ci.id = a.activity_id;