-- ======================
-- CREATE DATABASE
-- ======================
CREATE DATABASE IF NOT EXISTS sql_assignment;
USE sql_assignment;

-- ======================
-- DROP OLD TABLES
-- ======================
DROP TABLE IF EXISTS Payments;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Employees;

-- ======================
-- CREATE TABLES
-- ======================
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount INT
);

CREATE TABLE Payments (
    PaymentID VARCHAR(10) PRIMARY KEY,
    CustomerID INT,
    PaymentDate DATE,
    Amount INT
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    ManagerID INT
);

-- ======================
-- INSERT DATA
-- ======================
INSERT INTO Customers VALUES
(1,'John Smith','New York'),
(2,'Mary Johnson','Chicago'),
(3,'Peter Adams','Los Angeles'),
(4,'Nancy Miller','Houston'),
(5,'Robert White','Miami');

INSERT INTO Orders VALUES
(101,1,'2024-10-01',250),
(102,2,'2024-10-05',300),
(103,1,'2024-10-07',150),
(104,3,'2024-10-10',450),
(105,6,'2024-10-12',400);

INSERT INTO Payments VALUES
('P001',1,'2024-10-02',250),
('P002',2,'2024-10-06',300),
('P003',3,'2024-10-11',450),
('P004',4,'2024-10-15',200);

INSERT INTO Employees VALUES
(1,'Alex Green',NULL),
(2,'Brian Lee',1),
(3,'Carol Ray',1),
(4,'David Kim',2),
(5,'Eva Smith',2);