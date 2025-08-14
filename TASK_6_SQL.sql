
 #--------------------------------------------------------TASK 6---------------------------------------------------#
/* scalar subquery*/
SELECT Title
FROM Books
WHERE Available_Copies = (
    SELECT MAX(Available_Copies)
    FROM Books
);
SELECT Member_Name
FROM members
WHERE Join_Date = (
    SELECT MAX(Join_Date)
    FROM members
);
SELECT borrow_date
FROM borrow_books
WHERE return_Date = (
    SELECT MAX(return_Date)
    FROM borrow_books
);
/* correlated subquery*/
SELECT BB.Member_ID, BB.BookID,
       (SELECT COUNT(*)
        FROM Borrow_Books AS BB2
        WHERE BB2.Member_ID = BB.Member_ID) AS Total_Books_Borrowed
FROM Borrow_Books AS BB;
/* subquery with IN*/
SELECT *
FROM Books
WHERE BookID IN (
    SELECT BB.BookID
    FROM Borrow_Books AS BB
    JOIN Members AS M ON BB.Member_ID = M.Member_ID
    WHERE M.Member_Name = 'lavanya shetty'
);
/* subquery with exists*/
SELECT M.Member_ID, M.Member_Name
FROM Members AS M
WHERE EXISTS (
    SELECT 1
    FROM Borrow_Books AS BB
    WHERE BB.Member_ID = M.Member_ID
      AND YEAR(BB.Borrow_Date) = 2025
);



