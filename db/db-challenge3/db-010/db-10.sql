SELECT u.name as ユーザー名, p.created_at as 投稿日時, c.name as チャットルーム名
FROM posts as p
  JOIN users as u
  ON p.post_user_id=u.id
  JOIN chatrooms as c
  ON p.chat_room_id=c.id
WHERE u.is_deleted=0 AND p.is_deleted=0 AND
  p.created_at IN (
SELECT max(p.created_at)
  FROM posts as p
    JOIN chatrooms as c
    ON p.chat_room_id=c.id
  GROUP BY c.name
)
ORDER BY c.id;
