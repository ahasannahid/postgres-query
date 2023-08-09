-- Active: 1691480676960@@127.0.0.1@5432@test2
-- database delete
-- DROP DATABASE university_management;
-- create DATABASE
-- CREATE DATABASE test2;
-- select database(which database want to use)
-- USE test4;
-- CREATE DATABASE university_management;
-- USE DATABASE university_management;
-- ##create a student TABLE

CREATE TABLE student(
    student_id INT ,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    cgpa NUMERIC(1,2)
);
--change/ update/rename a table name
ALTER TABLE student RENAME TO learners;
--delete a table 
DROP table learners;

-- create a table with CONSTRAINT
CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

-- CREATE TABLE user1(
--     user_id SERIAL,
--     user_name VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
--     PRIMARY KEY(user_id, user_name)
-- );


-- CREATE TABLE user2(
--     user_id SERIAL,
--     user_name VARCHAR(255) NOT NULL,
--     email VARCHAR(255)  NOT NULL,
--     PRIMARY KEY(user_id, user_name),
--     UNIQUE(user_name, email)
-- );

-- insert default value
CREATE TABLE users1(
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    age int DEFAULT 18
);


-- insert into table

INSERT INTO users1 values(1, 'Nahid', 'ahnahid123@gmail.com');

-- show data 

SELECT * from users1;


INSERT INTO users1 (user_id, user_name, email, age) values (2,'Ahasan', 'abc@gmail.com', 20);
INSERT INTO users1 (user_id, user_name, email, age) values (3, 'Ahaasan', 'abcd@gmail.com', 20);


-- insert multiple VALUES

INSERT into users1 (user_id,user_name, email) 
VALUES 
(4,'ahassan1', 'ahfddhas@gaj.com'),
(5,'ahasan2', 'ahdwshas@gaj.com'),
(6,'ahasan5', 'ahdhasas@gaj.com'),
(7,'ahasan4', 'ahdxewhas@gaj.com');


-- delete all rows in a table without deleting a table

TRUNCATE TABLE users1;

SELECT * from users1;

-- add new COLUMN or update column information
-- ALTER TABLE
--1. add a column 2. drop a column, 3.change datatype of a column,4. rename a column, 5. set default value for a column.6. add constraint to a column.7. drop constraint to a column, 8. table rename
-- ALTER TABLE table_name action


-- add column
ALTER TABLE users1
add COLUMN password VARCHAR(255)  DEFAULT 'admin' NOT NULL;

ALTER TABLE users1
add COLUMN class VARCHAR(255) DEFAULT 'X' NOT NULL;

ALTER TABLE users1
add COLUMN country int;

-- delete COLUMN
ALTER TABLE users1
DROP COLUMN country;

-- change datatype
ALTER TABLE users1
    ALTER COLUMN country type text;

-- set DEFAULT value
ALTER TABLE users1
    ALTER COLUMN country set DEFAULT 'bangladesh';

    -- remove DEFAULT value
ALTER TABLE users1
    ALTER COLUMN country drop DEFAULT;

-- rename column
ALTER TABLE users1
    RENAME COLUMN cxountry to country;

-- add a constraint
ALTER TABLE users1
    ALTER COLUMN country set NOT NULL;
-- drop a constraint
ALTER TABLE users1
    ALTER COLUMN country DROP NOT NULL;

-- add unique constraint in TABLE
ALTER TABLE users1
ADD CONSTRAINT unique_email UNIQUE(email);

-- drop unique constraint in TABLE
ALTER TABLE users1
DROP CONSTRAINT unique_email;



INSERT into users1 (user_name, email) 
VALUES 
('dhabibssdxsdss', 'asswdsxxssxd@gaj.com'),
('hadbdsdcxssdcib', 'adsdxsssssasr@gaj.com' );

SELECT * from users1;