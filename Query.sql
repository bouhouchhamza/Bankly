USE BANKLY_db;
INSERT INTO customers(full_name, email, phone, registration_date)
VALUES ('New Customer', 'new.customer@gmail.com', '0611223344', NOW());

UPDATE customers
SET phone = '0700000000'
WHERE customer_id = 1;

SELECT * FROM customers;

SELECT full_name, email FROM customers;

SELECT * FROM accounts;

SELECT account_number FROM accounts;

SELECT * FROM transactions;

SELECT * FROM accounts
WHERE balence > 10000;

SELECT * FROM accounts
WHERE balence <= 0;

SELECT * FROM transactions
WHERE transaction_type = 'debit';

SELECT * FROM transactions
WHERE transaction_type = 'credit';

SELECT * FROM transactions
WHERE accountid = 1;

SELECT 
    customers.customer_id,
    customers.full_name,
    customers.email,
    accounts.account_number
FROM customers
JOIN accounts
    ON accounts.customerid = customers.customer_id
WHERE accounts.advisorid = 2;

SELECT * FROM accounts
WHERE account_type = 'Savings';

SELECT * FROM transactions
WHERE amount >= 500;

SELECT * FROM transactions
WHERE amount BETWEEN 100 AND 1000;

SELECT * FROM accounts
WHERE customerid = 1;

SELECT * FROM accounts
ORDER BY balence ASC;

SELECT * FROM transactions
ORDER BY amount DESC;

SELECT * FROM transactions
ORDER BY amount DESC
LIMIT 5;

SELECT * FROM transactions
ORDER BY transaction_date DESC;

SELECT * FROM transactions
ORDER BY transaction_date DESC
LIMIT 3;

SELECT
    accounts.account_id,
    accounts.account_number,
    accounts.balence,
    customers.full_name AS customer_name,
    advisor.full_name AS advisor_name
FROM accounts
JOIN customers
    ON accounts.customerid = customers.customer_id
JOIN advisor
    ON accounts.advisorid = advisor.advisor_id;
