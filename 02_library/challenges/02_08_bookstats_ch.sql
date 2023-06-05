-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

SELECT Title, Published, COUNT(Title) FROM Books
GROUP BY Title
ORDER BY Published;

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Books.Title, COUNT(Loans.BookID) AS TimesBookCheckedOut FROM Loans
JOIN Books ON Loans.BookID = Books.BookID
GROUP BY Books.Title
ORDER BY TimesBookCheckedOut DESC
LIMIT 5;
