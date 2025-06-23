--
-- File generated with SQLiteStudio v3.4.17 on Mon Jun 23 20:52:40 2025
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: OrderItems
CREATE TABLE OrderItems(OrderItemID INTEGER PRIMARY KEY AUTOINCREMENT,OrderID INTEGER,ProductID INTEGER,Quantity INTEGER,FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),FOREIGN KEY (ProductID) REFERENCES Products(ProductID));
INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity) VALUES (1, 1, 1, 1);
INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity) VALUES (2, 1, 2, 2);

-- Table: Orders
CREATE TABLE Orders (OrderID INTEGER PRIMARY KEY AUTOINCREMENT,UserID INTEGER,OrderDate TEXT,FOREIGN KEY (UserID) REFERENCES Users(UserID));
INSERT INTO Orders (OrderID, UserID, OrderDate) VALUES (1, 3, '2025-06-23');

-- Table: Products
CREATE TABLE Products (ProductID INTEGER PRIMARY KEY AUTOINCREMENT,Name TEXT,Price REAL);
INSERT INTO Products (ProductID, Name, Price) VALUES (1, 'Laptop', 55000.0);
INSERT INTO Products (ProductID, Name, Price) VALUES (2, 'Mouse', 700.0);
INSERT INTO Products (ProductID, Name, Price) VALUES (3, 'Laptop', 50000.0);
INSERT INTO Products (ProductID, Name, Price) VALUES (4, 'Mouse', 700.0);
INSERT INTO Products (ProductID, Name, Price) VALUES (5, 'Keyboard', 1200.0);
INSERT INTO Products (ProductID, Name, Price) VALUES (6, 'Monitor', 9000.0);

-- Table: Users
CREATE TABLE Users (UserID INTEGER PRIMARY KEY AUTOINCREMENT,UserName TEXT,Email TEXT UNIQUE,Password TEXT);
INSERT INTO Users (UserID, UserName, Email, Password) VALUES (3, 'Rajeshh', 'rajeshh@email.com', '123456');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
