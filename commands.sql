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
-- add city column
ALTER TABLE users ADD city VARCHAR(50) NOT NULL;
-- update missing city field in rows
UPDATE users SET city="Bangalore" WHERE id=2;
-- get unique column values in table
SELECT DISTINCT city from users;
-- order by username field in descending order
SELECT * FROM users ORDER BY username DESC;
-- WHERE with multiple conditions (AND)
SELECT * FROM users WHERE id > 0 AND city="Bangalore";
-- filter by string (LIKE. % is for till the end. OR operator)
SELECT * FROM users WHERE city="Bangalore" OR username LIKE 'r%';