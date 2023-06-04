-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT * FROM Customers
WHERE FirstName LIKE 'Loretta' AND LastName LIKE 'Hundey'

INSERT INTO Orders (CustomerID, OrderDate)
VALUES ((SELECT CustomerID FROM Customers WHERE FirstName LIKE 'Loretta' AND LastName LIKE 'Hundey'), '2022-09-20 14:00:00')

SELECT * FROM Orders
WHERE CustomerID = 70

SELECT DishID, Name, Price FROM Dishes
WHERE Name = 'House Salad' 
OR Name = 'Mini Cheeseburgers' 
OR Name = 'Tropical Blue Smoothie'

INSERT INTO OrdersDishes (OrderID, DishID)
Values(1001, 4), (1001, 7), (1001, 20)

SELECT OrdersDishes.OrderID, SUM(Dishes.Price) FROM Dishes
JOIN OrdersDishes ON Dishes.DishID = OrdersDishes.DishID
WHERE OrdersDishes.OrderID = 1001



