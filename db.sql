CREATE DATABASE BANKLY_db;
USE BANKLY_db;
CREATE TABLE Customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    full_name VARCHAR(250),
    email VARCHAR(250) UNIQUE,
    phone VARCHAR(250),
    registration_date DATETIME
);
CREATE TABLE advisor(
    advisor_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    full_name VARCHAR (250),
    email VARCHAR(250) UNIQUE
);