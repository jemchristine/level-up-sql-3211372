-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT Patrons.FirstName, Patrons.LastName, Patrons.Email, COUNT(Loans.BookID) AS NumberOfBooksLoaned FROM Loans
JOIN Patrons ON Loans.PatronID = Patrons.PatronID
GROUP BY Loans.PatronID
ORDER BY NumberOfBooksLoaned ASC
LIMIT 15;