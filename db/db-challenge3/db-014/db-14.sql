BEGIN;
DELETE cu
FROM
  chatroom_users as cu
  JOIN users as u ON cu.user_id = u.id
WHERE
  u.is_deleted = 1;
COMMIT;
