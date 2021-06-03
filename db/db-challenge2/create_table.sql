CREATE TABLE users
(
  id INT(11) NOT NULL
  AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR
  (100) DEFAULT '' NOT NULL,
  mail VARCHAR
  (100) DEFAULT '' NOT NULL,
  password VARCHAR
  (100) DEFAULT '' NOT NULL,
  work_tell CHAR
  (13),
  my_tell CHAR
  (13),
  profile TEXT
  (1000),
  is_deleted TINYINT
  (1) DEFAULT 0 NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
);

  CREATE TABLE chatrooms
  (
    id INT(11) NOT NULL
    AUTO_INCREMENT PRIMARY KEY,
  created_user_id INT
    (11) NOT NULL REFERENCES users
    (id),
  updated_user_id INT
    (11) NOT NULL REFERENCES users
    (id),
  name VARCHAR
    (100) DEFAULT '' NOT NULL,
  description TEXT
    (1000),
  is_permit_file TINYINT
    (1) DEFAULT 0 NOT NULL,
  is_direct_chat TINYINT
    (1) DEFAULT 0 NOT NULL,
  is_deleted TINYINT
    (1) DEFAULT 0 NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
);

    CREATE TABLE chatroom_users
    (
      id INT(11) NOT NULL
      AUTO_INCREMENT PRIMARY KEY,
  chat_id INT
      (11) NOT NULL REFERENCES chatrooms
      (id),
  user_id INT
      (11) NOT NULL REFERENCES users
      (id),
  participant_at DATETIME NOT NULL
);

      CREATE TABLE posts
      (
        id INT(11) NOT NULL
        AUTO_INCREMENT PRIMARY KEY,
  chat_id INT
        (11) NOT NULL REFERENCES chatrooms
        (id),
  post_user_id INT
        (11) NOT NULL REFERENCES users
        (id),
  update_user_id INT
        (11) NOT NULL REFERENCES users
        (id),
  contents TEXT
        (1000) NOT NULL,
  attachment_file_name VARCHAR
        (100),
  is_deleted TINYINT
        (1) DEFAULT 0 NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
);

        CREATE TABLE tasks
        (
          id INT(11) NOT NULL
          AUTO_INCREMENT PRIMARY KEY,
  chat_id INT
          (11) NOT NULL REFERENCES chatrooms
          (id),
  created_user_id INT
          (11) NOT NULL REFERENCES users
          (id),
  update_user_id INT
          (11) NOT NULL REFERENCES users
          (id),
task_user_id INT
          (11) NOT NULL REFERENCES users
          (id),
description TEXT
          (1000) NOT NULL,
deadline DATETIME,
is_completed TINYINT
          (1) DEFAULT 0 NOT NULL,
is_deleted TINYINT
          (1) DEFAULT 0 NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME NOT NULL
);

