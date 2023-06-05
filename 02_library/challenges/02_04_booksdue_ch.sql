-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT Patrons.FirstName, Patrons.LastName, Patrons.Email, Books.Title, Loans.DueDate FROM Loans
JOIN Patrons ON Loans.PatronID = Patrons.PatronID
JOIN Books ON Loans.BookID = Books.BookID
WHERE Loans.DueDate = '2022-07-13' AND Loans.ReturnedDate ISNULL;