
--/***************************COMMANDS FOR BOOKS DATABASE********************************/
---------------------------------------------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS jbk_books;
----------------------------------------------------------------------------------------------------------------------------------
USE jbk_books;
----------------------------------------------------------------------------------------------------------------------------
CREATE TABLE books (id INT, bname VARCHAR(30), author VARCHAR(30), genre VARCHAR(30),pages INT,publish_date DATE,price DOUBLE);
-----------------------------------------------------------------------------------------------------------------------------------
DESCRIBE books;
------------------------------------------------------------------------------------------------------------------------------------
--Inserting records.-
INSERT INTO jbk_books.books VALUES
(1, "Wings of Fire", "A.P.J. Abdul Kalam", "Motivational", 400, '1999-01-01', 2500),
(2, "The Immortals of Meluha", "Amish Tripathi", "Fiction", 350, '2010-02-24', 500),
(3, "The Kite Runner", "Khaled Hosseini", "Fiction", 550, '2003-05-29', 390),
(4, "Harry Potter and the Sorcerer's Stone", "J.K. Rowling", "Fantasy", 600, '1997-06-26', 2000),
(5, "The Da Vinci Code", "Dan Brown", "Mystery", 450, '2003-03-18', 3000),
(6, "The Alchemist", "Paulo Coelho", "Motivational", 300, '1988-01-01', 750),
(7, "The God of Small Things", "Arundhati Roy", "Fiction", 500, '1997-04-04', 800),
(8, "Ignited Minds", "A.P.J. Abdul Kalam", "Motivational", 380, '2002-01-01', 150),
(9, "To Kill a Mockingbird", "Harper Lee", "Classic", 420, '1960-07-11', 3500),
(10, "The Secret", "Rhonda Byrne", "Self-Help", 320, '2006-11-28', 500);
---------------------------------------------------------------------------------------------------------------------------------
--error(ERROR 1406 (22001): Data too long for column 'bname' at row 4) Solution=> ALTER
-------------------------------------------------------------------------------------------------------------------------
--changing  size of bname
ALTER TABLE jbk_books.books
CHANGE COLUMN bname bname VARCHAR(50);
-----------------------------------------------------------------------------------------------------------------------
--Display The Feilds 
mysql> SELECT * FROM books;
+------+---------------------------------------+--------------------+--------------+-------+--------------+-------+
| id   | bname                                 | author             | genre        | pages | publish_date | price |
+------+---------------------------------------+--------------------+--------------+-------+--------------+-------+
|    1 | Wings of Fire                         | A.P.J. Abdul Kalam | Motivational |   400 | 1999-01-01   |  2500 |
|    2 | The Immortals of Meluha               | Amish Tripathi     | Fiction      |   350 | 2010-02-24   |   500 |
|    3 | The Kite Runner                       | Khaled Hosseini    | Fiction      |   550 | 2003-05-29   |   390 |
|    4 | Harry Potter and the Sorcerer's Stone | J.K. Rowling       | Fantasy      |   600 | 1997-06-26   |  2000 |
|    5 | The Da Vinci Code                     | Dan Brown          | Mystery      |   450 | 2003-03-18   |  3000 |
|    6 | The Alchemist                         | Paulo Coelho       | Motivational |   300 | 1988-01-01   |   750 |
|    7 | The God of Small Things               | Arundhati Roy      | Fiction      |   500 | 1997-04-04   |   800 |
|    8 | Ignited Minds                         | A.P.J. Abdul Kalam | Motivational |   380 | 2002-01-01   |   150 |
|    9 | To Kill a Mockingbird                 | Harper Lee         | Classic      |   420 | 1960-07-11   |  3500 |
|   10 | The Secret                            | Rhonda Byrne       | Self-Help    |   320 | 2006-11-28   |   500 |
+------+---------------------------------------+--------------------+--------------+-------+--------------+-------+
------------------------------------------------------------------------------------------------------------------------------------
--Display Those Book s Records whoe price is greater than 1000
select * from books where price>1000;
------------------------------------------------------------------------------------------------------------------------------------
