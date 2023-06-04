-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

UPDATE Customers
SET [FavoriteDish] = (SELECT DishID From Dishes WHERE Name LIKE 'Quinoa Salmon Salad')
WHERE FirstName = 'Cleo' AND LastName = 'Goldwater'