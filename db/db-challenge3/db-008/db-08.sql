SELECT u.name as ユーザー名, c.name as チャットルーム名,
  SUBSTRING(participant_at,1,10)  as 参加日時
FROM chatroom_users as cu
  JOIN users as u
  ON cu.user_id=u.id
  JOIN chatrooms as c
  ON cu.chat_room_id=c.id
WHERE u.is_deleted=0 AND c.is_deleted=0
ORDER BY participant_at;
