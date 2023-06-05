-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT(Title) FROM Books
WHERE Title LIKE '%Dracula%';

SELECT COUNT(Books.Title) FROM Loans
JOIN Books ON Loans.BookID = Books.BookID
WHERE Books.Title LIKE 'Dracula' AND Loans.ReturnedDate IS NULL

SELECT (SELECT COUNT(Title) FROM Books
          WHERE Title LIKE '%Dracula%') - 
        (SELECT COUNT(Books.Title) FROM Loans
          JOIN Books ON Loans.BookID = Books.BookID
          WHERE Books.Title LIKE 'Dracula' AND Loans.ReturnedDate IS NULL)
        AS TotalAvailableCopies;