CREATE DATABASE Library

USE Library



CREATE TABLE Types(
Id int Primary key identity,
Category nvarchar(50)
)

INSERT INTO Types
VAlUES ('Satirik'),
       ('Dedektiv'),
	   ('Sevgi')

CREATE TABLE Books(
Id int Primary key identity,
Name nvarchar(100),
Author nvarchar(100),
NumberOfPages int NOT NULL,
BookType int FOREIGN KEY REFERENCES Types(Id)

)

INSERT INTO Books 
VALUES('The Big Sleep',' Raymond Chandler',500,2),
      ('The Hound of the Baskervilles','Sir Arthur Conan Doyle',500,2),
	  ('On Love','Stendhal',400,3),
	  ('Men are from Mars, Women are from Venus','John Gray',400,3),
	  ('Don’t Laugh, It’ll Only Encourage Her','Daisy May',300,1),
	  ('My Lifey','Paddy McGuinness',300,1)

	  SELECT *FROM Books

CREATE TABLE Authors(
Id int Primary key identity,
FullName nvarchar(100),

)

INSERT INTO Authors 
VALUES ('Raymond  Chandler'),
       ('Sir Arthur Conan Doyle'),
	   ('Stendhal'),
	   ('John Gray'),
	   ('Daisy May'),
	   ('Paddy McGuinness')

SELECT * FROM Authors


--Book la type aras;ndaki asililiq 1:M olur


--BOOK ve Author table llari arasindaki asililiq M:M dir

CREATE TABLE AuthorBooks(
Id int Primary key identity,
AuthorId int FOREIGN KEY REFERENCES Authors(Id),
BookId int FOREIGN KEY REFERENCES Books(Id),
)

INSERT INTO AuthorBooks
VALUES (1,1),
       (2,2),
	   (3,3),
	   (4,4),
	   (5,5),
	   (6,6)
	   

SELECT * FROM AuthorBooks

SELECT Books.Id,Books.Name,Books.Author,Books.NumberOfPages,Books.BookType FROM Books INNER JOIN Types on Books.BookType= Types.Id

SELECT Books.Id,Books.Name,Books.Author,Books.NumberOfPages,Books.BookType FROM Books left JOIN Types on Books.BookType= Types.Id

SELECT Books.Id,Books.Name,Books.Author,Books.NumberOfPages,Books.BookType FROM Books Right JOIN Types on Books.BookType= Types.Id
SELECT Books.Id,Books.Name,Books.Author,Books.NumberOfPages,Books.BookType FROM Books Full JOIN Types on Books.BookType= Types.Id











