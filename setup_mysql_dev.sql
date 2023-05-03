-- A script that creates prepapares mysql server

-- create database
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- create user and set password
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

-- Grant all privilege on database to user
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';

-- grant select privelege to user on database
GRANT SELECT ON performance_schema.*TO 'hbnb_dev'@'localhost';
