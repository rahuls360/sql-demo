SHOW DATABASES;
-- error if exists
CREATE DATABASE my_app;
-- warning if not exists
CREATE DATABASE IF NOT EXISTS my_app;
USE my_app;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL
)
INSERT INTO users(username) VALUES('random_username');
DELETE FROM users WHERE id=3;
ALTER TABLE users MODIFY username VARCHAR(50) UNIQUE NOT NULL;