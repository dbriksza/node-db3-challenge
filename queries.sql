-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT ProductName, CategoryName FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID; 

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT OrderID, ShipperName FROM Orders
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
WHERE OrderDate < "2012-08-09";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.


SELECT ProductName, Quantity FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE OrderId = "10251"
ORDER BY ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT OrderID, CompanyName, LastName FROM Orders AS O
JOIN Customers AS C ON C.CustomerID = O.CustomerID
JOIN Employees AS E ON E.EmployeeID = O.EmployeeID;