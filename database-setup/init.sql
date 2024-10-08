-- Initialization script for the Aline Financial database

CREATE DATABASE aline_financial;
CREATE USER 'aline'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON aline_financial.* TO 'aline'@'%';
COMMIT;