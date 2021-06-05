BEGIN;
  UPDATE chatrooms as c
  JOIN chatroom_users
as cu
  ON c.id=cu.chat_room_id
  SET c.is_permit_file=0,c.updated_user_id=1,c.updated_at=NOW()
WHERE c.is_deleted=0 AND cu.user_id <> 1;
  COMMIT;
