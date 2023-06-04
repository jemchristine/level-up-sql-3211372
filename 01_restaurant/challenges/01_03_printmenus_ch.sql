-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT Name, Description, Price FROM Dishes
ORDER BY Price ASC;

SELECT Name, Description, Price, Type FROM Dishes
WHERE Type LIKE 'Appetizer' OR Type LIKE 'Beverage'
ORDER BY Type;

SELECT Name, Description, Price, Type FROM Dishes
WHERE Type NOT LIKE 'Beverage'
ORDER BY Type;
