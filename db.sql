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
CREATE TABLE accounts(
    account_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    account_number VARCHAR (250),
    balence DECIMAL(15,2) ,
    account_type VARCHAR(250),
    customerid INT,
    advisorid INT ,
    FOREIGN KEY (customerid) REFERENCES Customers(customer_id),
    FOREIGN KEY (advisorid) REFERENCES advisor(advisor_id)
);
CREATE TABLE transactions(
    transaction_id INT AUTO_INCREMENT PRIMARY KEY  NOT NULL,
    amount DECIMAL (12,2),
    transaction_type VARCHAR(50),
    transaction_date DATETIME,
    accountid int ,
    FOREIGN KEY (accountid) REFERENCES accounts(account_id)
);