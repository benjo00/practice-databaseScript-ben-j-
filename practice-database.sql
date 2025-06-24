Jason Brown  to  Everyone 3:24 PM
``
START TRANSACTION;

DROP TABLE IF EXISTS posts, users, user_groups;

CREATE TABLE users (
 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 username VARCHAR(50) NOT NULL,
 email VARCHAR(100) NULL DEFAULT 'N/A',
 password VARCHAR(255) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE posts (
 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 user_id INT NOT NULL REFERENCES users(id),
 title VARCHAR(100) NOT NULL,
 content TEXT NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_groups (
 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 group_name VARCHAR(100) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);



INSERT INTO users (username, email, password) VALUES ('alice', 'alice@test.com', 'password123');
INSERT INTO users (username, email, password) VALUES ('bob', 'bob@test.com', 'password456');
INSERT INTO users (username, email, password) VALUES ('charlie', 'charlie@test.com', 'password789');

INSERT INTO posts (user_id, title, content) VALUES (1, 'First Post', 'This is the content of the first post');
INSERT INTO posts (user_id, title, content) VALUES (2, 'Second Post', 'This is the content of the second post');
INSERT INTO posts (user_id, title, content) VALUES (3, 'Third Post', 'This is the content of the third post');
INSERT INTO posts (user_id, title, content) VALUES (1, 'Fourth Post', 'This is the content of the fourth post');
INSERT INTO posts (user_id, title, content) VALUES (2, 'Fifth Post', 'This is the content of the fifth post');
INSERT INTO user_groups (group_name) VALUES ('software engineers');
INSERT INTO user_groups (group_name) VALUES ('dog lovers');
INSERT INTO user_groups (group_name) VALUES ('summertime garden enthusiasts');


COMMIT;