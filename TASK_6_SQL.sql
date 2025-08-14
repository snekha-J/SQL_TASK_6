use library;
## TABLE CREATED FOR BOOKS
CREATE TABLE books(
BookID INT PRIMARY KEY,
Title VARCHAR(50),
Author VARCHAR(30),
Published_Year INT,
Genre INT,
Available_copies INT
);
alter table book rename to books;
alter table book modify Genre varchar(20);
describe books;
##TABLE CREATED FOR MEMBER TABLE
CREATE TABLE Members(
Member_ID INT PRIMARY KEY,
Member_Name VARCHAR(20) NOT NULL,
Email VARCHAR(30) UNIQUE,
Join_Date DATE NOT NULL
);

##CREATE TABLE FOR BORROWING BOOKS
CREATE TABLE Borrow_Books(
Borrow_ID INT PRIMARY KEY,
BookID INT,
Member_ID INT,
Borrow_Date DATE,
Return_Date DATE,
FOREIGN KEY(BookID)REFERENCES book(BookID),
FOREIGN KEY(Member_ID)REFERENCES Members(Member_ID)
);
                                         #---------------TASK2------------------#
#-------------------INSERT VALUES INTO BOOKS TABLE OF 50 ROWS-------------------#
INSERT INTO books (BookID, Title,Author,Published_Year, Genre, Available_copies) VALUES
('0001', 'The Great Gatsby', 'Scribner', 1925, 'Classic', 10),
('0002', 'To Kill a Mockingbird', 'J.B. Lippincott', 1960, 'Classic', 11),
('0003', '1984', 'Secker & Warburg', 1949, 'Dystopian', 12),
('0004', 'Pride and Prejudice', 'T. Egerton', 1813, 'Romance', 13),
('0005', 'Moby-Dick', 'Harper & Brothers', 1851, 'Adventure', 14),
('0006', 'War and Peace', 'The Russian Messenger', 1869, 'Historical', 15),
('0007', 'The Catcher in the Rye', 'Little, Brown', 1951, 'Coming-of-Age', 16),
('0008', 'Brave New World', 'Chatto & Windus', 1932, 'Dystopian', 17),
('0009', 'Jane Eyre', 'Smith, Elder & Co.', 1847, 'Romance', 18),
('0010', 'The Lord of the Rings', 'Allen & Unwin', 1954, 'Fantasy', 19),
('0011', 'The Hobbit', 'George Allen & Unwin', 1937, 'Fantasy', 20),
('0012', 'Crime and Punishment', 'The Russian Messenger', 1866, 'Psychological', 21),
('0013', 'Wuthering Heights', 'Thomas Cautley Newby', 1847, 'Gothic', 22),
('0014', 'The Odyssey', 'Ancient Greece', -800, 'Epic', 23),
('0015', 'The Iliad', 'Ancient Greece', -750, 'Epic', 24),
('0016', 'Don Quixote', 'Francisco de Robles', 1605, 'Adventure', 25),
('0017', 'Les Misérables', 'A. Lacroix', 1862, 'Historical', 26),
('0018', 'Frankenstein', 'Lackington, Hughes', 1818, 'Horror', 27),
('0019', 'Dracula', 'Archibald Constable', 1897, 'Horror', 28),
('0020', 'Anna Karenina', 'The Russian Messenger', 1877, 'Romance', 29),
('0021', 'Ulysses', 'Shakespeare and Company', 1922, 'Modernist', 30),
('0022', 'The Brothers Karamazov', 'The Russian Messenger', 1880, 'Philosophical', 31),
('0023', 'A Tale of Two Cities', 'Chapman & Hall', 1859, 'Historical', 32),
('0024', 'Great Expectations', 'Chapman & Hall', 1861, 'Classic', 33),
('0025', 'Oliver Twist', 'Bentley’s Miscellany', 1837, 'Classic', 34),
('0026', 'Sense and Sensibility', 'Thomas Egerton', 1811, 'Romance', 35),
('0027', 'Little Women', 'Roberts Brothers', 1868, 'Classic', 36),
('0028', 'The Scarlet Letter', 'Ticknor, Reed & Fields', 1850, 'Classic', 37),
('0029', 'The Picture of Dorian Gray', 'Ward, Lock & Co.', 1890, 'Gothic', 38),
('0030', 'Heart of Darkness', 'Blackwood’s Magazine', 1899, 'Novella', 39),
('0031', 'The Grapes of Wrath', 'Viking Press', 1939, 'Classic', 40),
('0032', 'Of Mice and Men', 'Covici Friede', 1937, 'Classic', 41),
('0033', 'Catch-22', 'Simon & Schuster', 1961, 'Satire', 42),
('0034', 'Lolita', 'Olympia Press', 1955, 'Controversial', 43),
('0035', 'Beloved', 'Alfred A. Knopf', 1987, 'Historical', 44),
('0036', 'The Color Purple', 'Harcourt', 1982, 'Drama', 45),
('0037', 'One Hundred Years of Solitude', 'Harper & Row', 1967, 'Magic Realism', 46),
('0038', 'The Stranger', 'Gallimard', 1942, 'Philosophical', 47),
('0039', 'The Sun Also Rises', 'Scribner', 1926, 'Modernist', 48),
('0040', 'On the Road', 'Viking Press', 1957, 'Beat', 49),
('0041', 'Slaughterhouse-Five', 'Delacorte', 1969, 'Satire', 50),
('0042', 'The Sound and the Fury', 'Jonathan Cape', 1929, 'Modernist', 51),
('0043', 'The Old Man and the Sea', 'Charles Scribner’s Sons', 1952, 'Classic', 52),
('0044', 'The Metamorphosis', 'Kurt Wolff Verlag', 1915, 'Absurdist', 53),
('0045', 'Invisible Man', 'Random House', 1952, 'Social Commentary', 54),
('0046', 'Native Son', 'Harper & Brothers', 1940, 'Social Commentary', 55),
('0047', 'Gone with the Wind', 'Macmillan', 1936, 'Historical', 56),
('0048', 'Rebecca', 'Victor Gollancz', 1938, 'Gothic', 57),
('0049', 'A Farewell to Arms', 'Charles Scribner’s Sons', 1929, 'War', 58),
('0050', 'Madame Bovary', 'Revue de Paris', 1856, 'Realism', 59); 

#------------------------INSERT VALUES INTO MEMBER TABLE OF 50 ROWS------------------#
INSERT INTO Members (Member_ID, Member_Name, Email, Join_Date) VALUES
(5001, 'Aarav Singh', 'aarav.singh@example.com', '2024-01-10'),
(5003, 'Meera Nair', 'meera.nair@example.com', '2024-01-12'),
(5005, 'Ravi Kumar', 'ravi.kumar@example.com', '2024-01-15'),
(5007, 'Divya Sharma', 'divya.sharma@example.com', '2024-01-20'),
(5009, 'Karan Patel', 'karan.patel@example.com', '2024-01-22'),
(5011, 'Sneha Reddy', 'sneha.reddy@example.com', '2024-01-25'),
(5013, 'Arjun Mehta', 'arjun.mehta@example.com', '2024-01-28'),
(5015, 'Ishita Das', 'ishita.das@example.com', '2024-02-01'),
(5017, 'Rahul Verma', 'rahul.verma@example.com', '2024-02-03'),
(5019, 'Neha Joshi', 'neha.joshi@example.com', '2024-02-05'),
(5021, 'Vikram Chauhan', 'vikram.chauhan@example.com', '2024-02-08'),
(5023, 'Pooja Sinha', 'pooja.sinha@example.com', '2024-02-10'),
(5025, 'Siddharth Jain', 'siddharth.jain@example.com', '2024-02-13'),
(5027, 'Aishwarya Rao', null, '2024-01-23'),
(5029, 'Manav Bhatia', 'manav.bhatia@example.com', '2024-02-17'),
(5031, 'Tanya Kapoor', 'tanya.kapoor@example.com', '2024-02-20'),
(5033, 'Aniket Sen', 'aniket.sen@example.com', '2024-02-22'),
(5035, 'Priya Aggarwal', 'priya.aggarwal@example.com', '2024-02-25'),
(5037, 'Rohit Deshmukh', 'rohit.deshmukh@example.com', '2024-03-01'),
(5039, 'Lavanya Shetty', 'lavanya.shetty@example.com', '2024-03-03'),
(5041, 'Gaurav Malhotra', 'gaurav.malhotra@example.com', '2024-03-06'),
(5043, 'Anjali Pillai', 'anjali.pillai@example.com', '2024-01-31'),
(5045, 'Kunal Dey', 'kunal.dey@example.com', '2024-03-10'),
(5047, 'Bhavana Iyer', 'bhavana.iyer@example.com', '2024-03-13'),
(5049, 'Aditya Menon', 'aditya.menon@example.com', '2024-03-15'),
(5051, 'Simran Sehgal', 'simran.sehgal@example.com', '2024-03-18'),
(5053, 'Nikhil Rathi', 'nikhil.rathi@example.com', '2024-03-20'),
(5055, 'Kriti Sharma', 'kriti.sharma@example.com', '2024-03-22'),
(5057, 'Parth Mishra', 'parth.mishra@example.com', '2024-03-24'),
(5059, 'Shruti Pandey', 'shruti.pandey@example.com', '2024-03-27'),
(5061, 'Yash Chaudhary', 'yash.chaudhary@example.com', '2024-02-09'),
(5063, 'Naina Dugar', 'naina.dugar@example.com', '2024-04-01'),
(5065, 'Dev Anand', 'dev.anand@example.com', '2024-04-03'),
(5067, 'Rekha Kumari', 'rekha.kumari@example.com', '2024-04-05'),
(5069, 'Ritesh Tiwari', 'ritesh.tiwari@example.com', '2024-04-07'),
(5071, 'Ira Mohan', 'ira.mohan@example.com', '2024-04-09'),
(5073, 'Tarun Arora', 'tarun.arora@example.com', '2024-04-11'),
(5075, 'Vidya Salvi', 'vidya.salvi@example.com', '2024-04-13'),
(5077, 'Dhruv Saxena', 'dhruv.saxena@example.com', '2024-04-15'),
(5079, 'Zoya Rahman', 'zoya.rahman@example.com', '2024-04-17'),
(5081, 'Kabir Khatri', 'kabir.khatri@example.com', '2024-04-19'),
(5083, 'Rhea Sood', 'rhea.sood@example.com', '2024-04-21'),
(5085, 'Samar Ghosh', 'samar.ghosh@example.com', '2024-04-23'),
(5087, 'Ishaan Paul', 'ishaan.paul@example.com', '2024-02-22'),
(5089, 'Tanvi Dasgupta', 'tanvi.dasgupta@example.com', '2024-04-27'),
(5091, 'Harsh Vora', 'harsh.vora@example.com', '2024-04-29'),
(5093, 'Sanya Malani', 'sanya.malani@example.com', '2024-05-01'),
(5095, 'Ayaan Lal', 'ayaan.lal@example.com', '2024-05-03'),
(5097, 'Myra Bedi', 'myra.bedi@example.com', '2024-05-05'),
(5099, 'Reyanth Rao', 'reyanth.rao@example.com', '2024-05-07'); 

#-------------------------------------INSERT VALUES INTO BORROWING BOOKS TABLE OF 50 ROWS---------------------------#
INSERT INTO BORROW_BOOKS (BORROW_ID, BOOKID, MEMBER_ID, BORROW_DATE, RETURN_DATE) VALUES
(2884, 1, 5001, '2025-06-01', '2025-06-10'),
(2886, 2, 5003, '2025-06-02', NULL),
(2888, 3, 5005, '2025-06-03', '2025-06-15'),
(2890, 4, 5007, '2025-06-04', NULL),
(2892, 5, 5009, '2025-06-05', '2025-06-12'),
(2894, 6, 5011, '2025-06-06', NULL),
(2896, 7, 5013, '2025-06-07', '2025-06-20'),
(2898, 8, 5015, '2025-06-08', NULL),
(2900, 9, 5017, '2025-06-09', '2025-06-19'),
(2902, 10, 5019, '2025-06-10', NULL),
(2904, 11, 5021, '2025-06-11', '2025-06-22'),
(2906, 12, 5023, '2025-06-12', NULL),
(2908, 13, 5025, '2025-06-13', '2025-06-25'),
(2910, 14, 5027, '2025-06-14', NULL),
(2912, 15, 5029, '2025-06-15', '2025-06-30'),
(2914, 16, 5031, '2025-06-16', NULL),
(2916, 17, 5033, '2025-06-17', '2025-07-01'),
(2918, 18, 5035, '2025-06-18', NULL),
(2920, 19, 5037, '2025-06-19', '2025-07-02'),
(2922, 20, 5039, '2025-06-20', NULL),
(2924, 21, 5041, '2025-06-21', '2025-07-03'),
(2926, 22, 5043, '2025-06-22', NULL),
(2928, 23, 5045, '2025-06-23', '2025-07-04'),
(2930, 24, 5047, '2025-06-24', NULL),
(2932, 25, 5049, '2025-06-25', '2025-07-05'),
(2934, 26, 5051, '2025-06-26', NULL),
(2936, 27, 5053, '2025-06-27', '2025-07-06'),
(2938, 28, 5055, '2025-06-28', NULL),
(2940, 29, 5057, '2025-06-29', '2025-07-07'),
(2942, 30, 5059, '2025-06-30', NULL),
(2944, 31, 5061, '2025-07-01', '2025-07-08'),
(2946, 32, 5063, '2025-07-02', NULL),
(2948, 33, 5065, '2025-07-03', '2025-07-09'),
(2950, 34, 5067, '2025-07-04', NULL),
(2952, 35, 5069, '2025-07-05', '2025-07-10'),
(2954, 36, 5071, '2025-07-06', NULL),
(2956, 37, 5073, '2025-07-07', '2025-07-11'),
(2958, 38, 5075, '2025-07-08', NULL),
(2960, 39, 5077, '2025-07-09', '2025-07-12'),
(2962, 40, 5079, '2025-07-10', NULL),
(2964, 41, 5081, '2025-07-11', '2025-07-13'),
(2966, 42, 5083, '2025-07-12', NULL),
(2968, 43, 5085, '2025-07-13', '2025-07-14'),
(2970, 44, 5087, '2025-07-14', NULL),
(2972, 45, 5089, '2025-07-15', '2025-07-15'),
(2974, 46, 5091, '2025-07-16', NULL),
(2976, 47, 5093, '2025-07-17', '2025-07-16'),
(2978, 48, 5095, '2025-07-18', NULL),
(2980, 49, 5097, '2025-07-19', '2025-07-17'),
(2982, 50, 5099, '2025-07-20', NULL);
#--------------------------------------DELETING PARTICULAR ROW OF AN PARTICULAR BORROWING BOOK TABLE-----------------#
DELETE FROM borrow_books
WHERE Borrow_ID='2982';
#-------------UPDATING MEMBERS TABLE WITH NULL VALUES AND USING WHERE CONDITION TO PERFORM OPRATIONS-----------#
UPDATE members SET member_name='Aishwarya Rao',email=null,join_date='2024-01-23'
WHERE member_id='5027';
UPDATE members SET member_name='Ravi Kumar', email=null,join_date='2024-01-15'
WHERE member_id='5005';
UPDATE members SET email=null,join_date='2024-02-01'
WHERE member_id='5015';
UPDATE members SET email=null
WHERE member_id='5049';
UPDATE members SET email=null
WHERE  member_id='5091';
#-------------UPDATING BOOKS TABLE WITH NULL VALUES AND USING WHERE CONDITION TO PERFORM OPRATIONS-----------#
UPDATE books
SET author=null
WHERE  bookid='018';
#----------------TO VIEW ONLY NULL VALUES PRENSENT IN BOOKS TABLE-------#
SELECT * FROM books
WHERE bookid IS NULL
OR title IS NULL
OR author IS NULL
OR published_year IS NULL
OR genre IS NULL
OR available_copies IS NULL;
#------------------------------HANDLING THE MISSING USING UPDATE AND WHERE CONDITION--------#
UPDATE  books 
SET author='sneha'
WHERE  bookid=6;
UPDATE books 
SET  author='willam'
WHERE  bookid=33;
#------------------------------HANDLING THE MISSING USING UPDATE AND WHERE CONDITION--------#
UPDATE borrow_books
SET return_date = '2025-07-22'
WHERE return_date IS NULL;
#------------DEFAULT PERFORM AFTRE FUTURE INSERTION------#
ALTER TABLE borrow_books
ALTER COLUMN return_date 
SET DEFAULT '2025-08-07';  
INSERT INTO BORROW_BOOKS (BORROW_ID, BOOKID, MEMBER_ID, BORROW_DATE, RETURN_DATE) VALUES
(2939, 12, 5001, '2025-06-01',null );
  #-------TABLE VIEW FOR BOOKS,MEMBERS,BORROWING BOOKS
SELECT * FROM books;                              #-----TABLE VIEW FOR CREATED BOOK TABLE-----#
SELECT * FROM  members;                           #-----TABLE VIEW FOR CREATED MEMBERSTABLE-----#
SELECT*FROM Borrow_books;                          #-------------TABLE VIEW FOR CREATED BORROW-BOOKS TABLE-------#
#-------------------PERFOM DELETION FOR BOOKS,MEMBERS,BORROWINGBOOKS---------------#
DELETE FROM  books;
DELETE FROM members;
DELETE FROM borrow_books;

#----------------------------------------------------TASK 3----------------------------------------------------------#
## TABLE ENTIRE VIEW WITH COLUMNS AND VALUE INSERTED
SELECT * FROM books;
SELECT * FROM  members;                          
SELECT*FROM Borrow_books;
## USING SELECT FOR SPECIFIC COLUMN
SELECT AUTHOR FROM BOOKS 
WHERE Genre='Classic';
## FILTER DATA USING WHERE CLAUSE & AND,LIKE OPERATOR
SELECT * FROM books
WHERE Genre='Classic' AND 
Author LIKE '%S';
## FILTER DATA USING WHERE CLAUSE & AND,OR ,LIKE,BETWEEN OPERATOR and ORDER BY FOR BOOK TABLE
SELECT * FROM books
WHERE Genre='Classic' AND 
Author LIKE '%S%' OR
Available_copies BETWEEN 10 AND 30
ORDER BY AVAILABLE_COPIES DESC;
#### FILTER DATA USING WHERE CLAUSE & AND,OR ,LIKE,BETWEEN OPERATOR and ORDER BY FOR MEMBER TABLE
SELECT * FROM members
WHERE Member_name LIKE '%A%'
AND Join_date BETWEEN 2020 AND 2025
OR Member_Name='Divya Sharma' OR Member_ID='5005'
ORDER BY Member_ID DESC;
#### FILTER DATA USING WHERE CLAUSE & AND,OR ,LIKE,BETWEEN OPERATOR and ORDER BY FOR BORROW BOOK TABLE
SELECT MEMBER_ID FROM BORROW_BOOKS
WHERE BOOKID=2884 OR
BORROW_DATE=2025-06-15 OR 2025-06-12
ORDER BY BORROW_ID DESC;
 #--------------------------------------------------------TASK 4---------------------------------------------------#
 #USING AGGREGATE FUNCTION : COUNT
 SELECT COUNT(GENRE)
FROM BOOKS
WHERE GENRE LIKE '%C%' '%N%';
SELECT COUNT(MEMBER_ID),JOIN_DATE
FROM MEMBERS
WHERE MEMBER_NAME IS NOT NULL
GROUP BY JOIN_DATE
HAVING COUNT(MEMBER_ID)!=5005
ORDER BY COUNT(MEMBER_ID) DESC;
SELECT COUNT(BOOKID),MEMBER_ID,BORROW_ID
FROM BORROW_BOOKS
GROUP BY MEMBER_ID,BORROW_ID
HAVING COUNT(BOOKID)>1
ORDER BY COUNT(BOOKID) DESC;
#SUM
SELECT SUM(Available_copies),BOOKID,TITLE
 FROM BOOKS 
 WHERE BOOKID BETWEEN 0005 AND 0020
 GROUP BY BOOKID,TITLE
 HAVING SUM(AVAILABLE_COPIES)<20;
SELECT SUM(MEMBER_NAME),MEMBER_ID,JOIN_DATE
FROM MEMBERS
GROUP BY MEMBER_ID,JOIN_DATE
HAVING SUM(MEMBER_ID)>5015;
#AVG
SELECT AVG(BORROW_ID),BOOKID,MEMBER_ID
FROM BORROW_BOOKS
GROUP BY BOOKID,MEMBER_ID;
SELECT AVG(PUBLISHED_YEAR),TITLE,AUTHOR
FROM BOOKS
GROUP BY TITLE,AUTHOR
HAVING  AVG(PUBLISHED_YEAR) IS NOT NULL
ORDER BY AVG(PUBLISHED_YEAR);
SELECT AVG(MEMBER_ID),MEMBER_NAME
FROM MEMBERS
WHERE MEMBER_NAME LIKE '%A'
GROUP BY MEMBER_ID,MEMBER_NAME
HAVING MEMBER_ID>5020;

#FIRST() AND LAST()
SELECT MEMBER_NAME
FROM MEMBERS
LIMIT 4;
SELECT TITLE,AUTHOR,BOOKID
FROM BOOKS
ORDER BY AUTHOR,BOOKID DESC
LIMIT 4;
#MAX()
SELECT MAX(BOOKID),TITLE,AUTHOR
FROM BOOKS
GROUP BY BOOKID,TITLE,AUTHOR
HAVING MAX(BOOKID)>10;
 #--------------------------------------------------------TASK 5---------------------------------------------------#
 #INNER JOINS
SELECT T1.BookID,T2.MEMBER_ID
FROM BOOKS as T1
INNER JOIN BORROW_BOOKS AS T2
ON T1.BOOKID=T2.BOOKID
INNER JOIN MEMBERS AS T3
ON T2.MEMBER_ID=T3.MEMBER_ID;
#LEFT JOIN
SELECT T1.BookID,T2.MEMBER_ID
FROM BOOKS AS T1
LEFT JOIN BORROW_BOOKS AS T2
ON T1.BookID=T2.BookID;
#RIGHT JOIN
SELECT T1.BookID,T2.MEMBER_ID
FROM BOOKS AS T1
RIGHT JOIN BORROW_BOOKS AS T2
ON T1.BookID=T2.BookID;
#UNION JOIN
SELECT T1.BookID,T2.MEMBER_ID,T3.Member_Name
FROM BOOKS AS T1
LEFT JOIN BORROW_BOOKS AS T2
ON T1.BookID=T2.BookID
LEFT JOIN MEMBERS AS T3
ON T2.MEMBER_ID=T3.MEMBER_ID
UNION 
SELECT T1.BookID,T2.MEMBER_ID,T3.Member_Name
FROM BOOKS AS T1
RIGHT JOIN BORROW_BOOKS AS T2
ON T1.BookID=T2.BookID
RIGHT JOIN MEMBERS AS T3
ON T2.MEMBER_ID=T3.MEMBER_ID;
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



