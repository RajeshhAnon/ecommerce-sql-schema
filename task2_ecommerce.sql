INSERT INTO Users (UserName, Email, Password) VALUES('Rajeshh', 'rajesh@email.com', '123456'),('Asha', 'asha@email.com', NULL);  -
INSERT INTO Products (Name, Price) VALUES('Keyboard', 1200),('Monitor', 8000),('Mouse', NULL);
INSERT INTO Orders (UserID, OrderDate)VALUES (3, '2025-06-26');
INSERT INTO OrderItems (OrderID, ProductID, Quantity) VALUES(1, 3, 1),(1, 4, 2);
UPDATE Products SET Price = 5000 WHERE Price IS NULL;
UPDATE Users SET Password = 'default123' WHERE Password IS NULL;
DELETE FROM OrderItems WHERE Quantity = 2;
DELETE FROM Products WHERE Name = 'Mouse';
SELECT * FROM Users;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM OrderItems;