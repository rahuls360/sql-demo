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
-- filter by string (LIKE = Case insensitive exact string comparison. % is used in a string, to match 0 or more charectors. OR operator)
SELECT * FROM users WHERE city="Bangalore" OR username LIKE 'r%';

-- movies released b/w 2010 and 2010 (BETWEEN -> WHERE column_name BETWEEN … AND …)
SELECT * FROM movies WHERE year BETWEEN 2000 AND 2010;
SELECT * FROM movies WHERE year >= 2000 AND year <= 2010;

-- movies not released b/w 2010 and 2010 (BETWEEN -> WHERE column_name NOT BETWEEN … AND …)
SELECT * FROM movies WHERE year NOT BETWEEN 2000 AND 2010;
SELECT * FROM movies WHERE year <= 2000 OR year >= 2010;

-- string contains text at start -> WHERE column_name LIKE "stringToMatch"
SELECT * FROM movies WHERE title LIKE "Toy story%";
-- not equals
SELECT * FROM movies WHERE director !="John Lasseter";
-- get distinct directors and order in ascending order (alpha numeric sort)
SELECT DISTINCT director FROM movies ORDER BY director;
-- order movies in descending order of year. return first 4 results
SELECT * FROM movies ORDER BY year DESC LIMIT 4;
-- order by multiple columns (ORDER BY column_name ASC/DESC, column_name2 ASC/DEC )
SELECT * FROM movies ORDER BY title ASC, year ASC LIMIT 5;
-- show paginated response (OFFSET)
SELECT * FROM movies ORDER BY title ASC, year ASC LIMIT 5 OFFSET 5;
