--create candystore databasr;
CREATE DATABASE candystore;

--switch to candystore database;
USE candystore;

--Create the customers table; 
CREATE TABLE customers(
    customerId INT AUTO_INCREMENT PRIMARY KEY, 
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    email VARCHAR(30),
    phone VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);


--Add our first customer:
INSERT INTO customers(firstName,lastName, email, phone)
VALUES('Damian', 'Montero', 'damian@bocacode.com', '976-CODE');

--Let's get All of the customers: everything 
--you put * specific colums you put in name 
SELECT * FROM customers;
INSERT INTO customers(firstName,lastName, email, phone)
VALUES('Cassandra', 'Curcio', 'CassCur@bocacode.com', '977-CODE');


--To find a specific customer in list run 
SELECT * FROM customers Where firstName = 'Cassandra';


--create the orders table:
CREATE TABLE orders(
    orderId INT AUTO_INCREMENT PRIMARY KEY, 
    customerId INT NOT NULL,
    total DECIMAL(8,2),
    tax DECIMAL(7,2),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

-- now let's add an order to our order table;
INSERT INTO orders (customerId,total,tax)
VALUES (1.19,48,0.18), (2.49,26,3.44);

-- We can show the orders by:
SELECT * FROM orders; 


--How can i search for all of damians orders
SELECT * FROM customers 
JOIN orders ON orders.customerId = customers.customerId 
WHERE firstName = 'Damian';





