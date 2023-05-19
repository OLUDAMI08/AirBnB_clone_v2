---script that prepares a MySQL server for the project:
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- Create the hbnb_dev user if it doesn't already exist
CREATE USER IF NOT EXIST 'hbnb_dev'@'locahost' IDENTIFIED BY "hbnb_dev_pwd";

-- Grant privileges to the hbnb_dev user
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'locahost';
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'locahost';
