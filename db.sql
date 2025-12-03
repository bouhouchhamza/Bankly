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
/*customers insert*/
INSERT INTO customers( full_name, Email , Phone , Registration_date )
VALUE('Ayman El Fadili' , 'ayman@gmail.com' , '0612345678', '2024-01-10 10:00:00');
INSERT INTO customers( full_name, Email , Phone , Registration_date )
VALUE('Salma Bennis' , 'salma.bennis@yahoo.com' , '0654432211', '2023-11-02 09:30:00');
INSERT INTO customers( full_name, Email , Phone , Registration_date )
VALUE('Youssef El Amrani' , 'youssef.am@gmail.com' , '0688997744', '2024-05-20 14:15:00');
INSERT INTO customers( full_name, Email , Phone , Registration_date )
VALUE('Sara El Haraki' , 'sara.hrk@gmail.com' , '0678123499', '2023-09-15 16:00:00');
INSERT INTO customers( full_name, Email , Phone , Registration_date )
VALUE('Hamza Bouhouch' , 'hamza.dev@gmail.com' , '0667125400', '2024-03-01 08:45:00');
INSERT INTO customers( full_name, Email , Phone , Registration_date )
VALUE('Meryem Ouali' , 'meryem.ouali@hotmail.com' , '0644553322', '2025-01-01 12:00:00');
/*insert advisor*/
INSERT INTO advisor(full_name,email)
VALUE('Imane El Moutawakil','imane.moutawakil@bankly.com');
INSERT INTO advisor(full_name,email)
VALUE('Karim El Haouari','karim.haouari@bankly.com');
INSERT INTO advisor(full_name,email)
VALUE('Hind Lamrini','hind.lamrini@bankly.com');
/*insert accounts*/
INSERT INTO accounts( account_number , balence , account_type , customerid , advisorid )
VALUE('ACC2001',7200.50,'Checking', 2 , 1);
INSERT INTO accounts( account_number , balence , account_type , customerid , advisorid )
VALUE('ACC2002',15000.00,'Savings', 2 , 2);
INSERT INTO accounts( account_number , balence , account_type , customerid , advisorid )
VALUE('ACC30010',200.50,'Checking', 3 , 3);
INSERT INTO accounts( account_number , balence , account_type , customerid , advisorid )
VALUE('ACC50010',-100.50,'Checking', 4, 1);
INSERT INTO accounts( account_number , balence , account_type , customerid , advisorid )
VALUE('ACC52010',20.50,'Checking', 3 , 1);
INSERT INTO accounts( account_number , balence , account_type , customerid , advisorid )
VALUE('ACC58000',8500.50,'Saving', 3 , 2);
INSERT INTO accounts( account_number , balence , account_type , customerid , advisorid )
VALUE('ACC901',700.50,'Saving',6, 2);
INSERT INTO accounts( account_number , balence , account_type , customerid , advisorid )
VALUE('ACC202',1500.00,'Savings', 7 , 1);
INSERT INTO accounts( account_number , balence , account_type , customerid , advisorid )
VALUE('ACC3010',-200.50,'Checking', 3 , 3);
INSERT INTO accounts( account_number , balence , account_type , customerid , advisorid )
VALUE('ACC5010',9600.50,'Checking', 4, 1);
INSERT INTO accounts( account_number , balence , account_type , customerid , advisorid )
VALUE('ACC5210',720.50,'Checking', 3 , 2);
INSERT INTO accounts( account_number , balence , account_type , customerid , advisorid )
VALUE('ACC5000',850.50,'Saving', 3 , 1);
/*INSERT TRANSICTION*/
INSERT INTO transactions(amount,transaction_type,transaction_date,accountid)
VALUE('200.00','debit','2025-01-12 09:30:00',2);
INSERT INTO transactions(amount,transaction_type,transaction_date,accountid)
VALUE('1200.00','credit','2025-01-13 19:30:00',2);
INSERT INTO transactions(amount,transaction_type,transaction_date,accountid)
VALUE('100.00','credit','2025-07-29 08:30:00',5);
INSERT INTO transactions(amount,transaction_type,transaction_date,accountid)
VALUE('600.00','debit','2025-01-17 14:18:00',5);
INSERT INTO transactions(amount,transaction_type,transaction_date,accountid)
VALUE('8500.00','credit','2025-06-12 16:28:00',3);
INSERT INTO transactions(amount,transaction_type,transaction_date,accountid)
VALUE('4500','credit','2025-08-12 15:28:00',3);
INSERT INTO transactions(amount,transaction_type,transaction_date,accountid)
VALUE('9500.00','credit','2025-01-12 20:28:00',4);
INSERT INTO transactions(amount,transaction_type,transaction_date,accountid)
VALUE('7500','credit','2025-02-12 04:28:00',4);
INSERT INTO transactions(amount,transaction_type,transaction_date,accountid)
VALUE('4500.00','credit','2025-01-12 19:28:00',6);
INSERT INTO transactions(amount,transaction_type,transaction_date,accountid)
VALUE('5800','credit','2025-04-12 23:28:00',6);
INSERT INTO transactions(amount,transaction_type,transaction_date,accountid)
VALUE('1500.00','credit','2025-12-12 06:28:00',7);
INSERT INTO transactions(amount,transaction_type,transaction_date,accountid)
VALUE('900','credit','2025-10-19 08:28:00',7);
/**/
