-- =====================================
-- CRUD OPERATIONS
-- =====================================


-- ADD BOOK

INSERT INTO Books
(Title, Author, Category, Quantity, AvailableCopies)
VALUES
('Software Engineering',
'Pressman',
'Education',
20,
20);



-- VIEW ALL BOOKS

SELECT * FROM Books;



-- UPDATE BOOK

UPDATE Books
SET Quantity = 25
WHERE BookID = 1;



-- DELETE BOOK

DELETE FROM Books
WHERE BookID = 5;



-- =====================================
-- SEARCH QUERIES
-- =====================================


-- SEARCH BY TITLE

SELECT *
FROM Books
WHERE Title LIKE '%Database%';



-- SEARCH BY AUTHOR

SELECT *
FROM Books
WHERE Author = 'Korth';



-- SEARCH BY CATEGORY

SELECT *
FROM Books
WHERE Category = 'Education';



-- =====================================
-- BOOK ISSUE QUERIES
-- =====================================


-- ISSUE BOOK

INSERT INTO IssuedBooks
(BookID, MemberID, IssueDate, ReturnDate, Status)
VALUES
(
1,
1,
CURDATE(),
DATE_ADD(CURDATE(), INTERVAL 14 DAY),
'Issued'
);



-- REDUCE AVAILABLE COPIES

UPDATE Books
SET AvailableCopies = AvailableCopies - 1
WHERE BookID = 1;



-- =====================================
-- RETURN BOOK
-- =====================================


UPDATE IssuedBooks
SET Status = 'Returned'
WHERE IssueID = 1;



UPDATE Books
SET AvailableCopies = AvailableCopies + 1
WHERE BookID = 1;



-- =====================================
-- REPORTS
-- =====================================


-- TOTAL BOOKS

SELECT COUNT(*) AS TotalBooks
FROM Books;



-- TOTAL MEMBERS

SELECT COUNT(*) AS TotalMembers
FROM Members;



-- AVAILABLE BOOKS

SELECT *
FROM Books
WHERE AvailableCopies > 0;



-- ISSUED BOOKS

SELECT *
FROM IssuedBooks
WHERE Status = 'Issued';



-- =====================================
-- JOIN QUERY
-- =====================================


SELECT
Members.Name,
Books.Title,
IssuedBooks.IssueDate
FROM IssuedBooks
JOIN Members
ON IssuedBooks.MemberID = Members.MemberID
JOIN Books
ON IssuedBooks.BookID = Books.BookID;



-- =====================================
-- AGGREGATE FUNCTIONS
-- =====================================


SELECT MAX(Quantity)
AS MaximumBooks
FROM Books;



SELECT MIN(Quantity)
AS MinimumBooks
FROM Books;



SELECT AVG(Quantity)
AS AverageBooks
FROM Books;



SELECT SUM(Quantity)
AS TotalQuantity
FROM Books;



-- =====================================
-- MOST BORROWED BOOK
-- =====================================


SELECT
BookID,
COUNT(*) AS TimesIssued
FROM IssuedBooks
GROUP BY BookID
ORDER BY TimesIssued DESC;