SELECT id, created_user_id, updated_user_id, name, description, is_direct_chat, is_deleted, created_at, updated_at,
  CASE is_permit_file WHEN 1 THEN '許可'
ELSE '禁止' 
END AS is_permit_file
FROM chatrooms
WHERE is_deleted=0 AND description LIKE '%ダイレクトチャット'
ORDER BY id;
