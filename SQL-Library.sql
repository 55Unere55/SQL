CREATE DATABASE db_Library
GO 
BEGIN
CREATE PROCEDURE createLibrabryDB

CREATE TABLE tbl_Library_Branch (
Book_Copies VARCHAR(80),
Books VARCHAR(80) NOT NULL PRIMARY KEY IDENTITY(1000,1)
Book_Authors VARCHAR(70) NOT NULL,
Branch_ID INT PRIMARY KEY IDENTITY(2050,1),
Branch_Name VARCHAR(70),
Branch_Adress VARCHAR(120)
);

INSERT INTO tbl_Library_Branch
(Branch_Name, Branch_Adress)
VALUES
('Sharpstown', 'Dullin Road 68, Shaprstown, Iowa'),
('Kentington', 'Monaghan Hill 33, Kentington, UK'),
('Grimm-Rock', 'Grimm-Falls 199, Grimm-Rock, Iceland'),
('Wavering', 'Cutfall-Heights 137, Wavering, Ireland'),
('Huntington', 'Memory Lane 23, Inner City, Huntington, Texas'),
('Boulevard', 'Festival Camp 2, Boulevard, Quebec, Canada')
;
SELECT * FROM tbl_Library_Branch;

CREATE TABLE tbl_Book_Copies (
Book_ID INT PRIMARY KEY IDENTITY(4005.2)
Branch_ID INT NOT NULL,
Number_of_Copies INT,
Book_Title VARCHAR(80) NOT NULL,
Branch_Name VARCHAR(80) NOT NULL
);

INSERT INTO tbl_Book_Copies
(Number_of_Copies, Book_Title, Branch_Name)
VALUES
(5, 'The lost Tribe', 'Sharpstown'),
(3, 'The lost Tribe', 'Kentington'),
(6, 'The lost Tribe', 'Grimm-Rock'),
(2, 'The lost Tribe', 'Wavering'), 
(4, 'The lost Tribe', 'Huntington'),
(9, 'The lost Tribe', 'Boulevard'),
(16, 'The Tale of the Nightingale', 'Sharpstown'),
(20, 'Stories of 1001 Nights', 'Grimm-Rock'),
(2, 'American History', 'Sharpstown'),
(33, 'Arts in the Battlefield, Guide to WOWC', 'Huntington'),
(3, 'Welcome Home?','Huntington'),
(7, 'RaY oF sUnShInE', 'Kentington')
;
SELECT * FROM tbl_Book Copies;

CREATE TABLE tbl_Books (
Book_ID INT PRIMARY KEY IDENTITY(6002,1)
Book_Title VARCHAR(80) NOT NULL CONSTRAINT fk_Book_Title = FOREIGN KEY REFERENCES tble_Book_Title ON UPDATE CASCADE ON DELETE CASCADE,
Publisher_Name VARCHAR(70) NOT NULL
);

INSERT INTO tbl_Books
(Book_Title, Publisher_Name)
VALUES
('The lost Tribe', 'St. Martins Press'),
('The Tale of the Nightingale', 'St. Martins Press'),
('Stories of 1001 Nights', 'Kama Shastra Society'),
('American History', 'John Hopkins University Press'),
('Arts in the Battlefield, Guide to WOWC', 'DK'),
('Welcome Home?', 'Simon Schuster'),
('RaY oF sUnShInE', 'Little Oaks Publishing'),
('Insel der Hoffnung', 'Ravensburger'),
('Slave', 'Damian Lewis, Public Affairs'), 
('Where the World began', 'Bloomsbury Publishing'),
('Pippi Langstrumpf', 'Raben & Sjoegren'),
('Hooks Treasure', 'Simon and Schuster'),
('The Pirates!', 'Weidenfeld & Nicolsen'), 
('The Boy who granted Dreams', 'Bastei Luebbe'),
('Max und Moritz', 'Braun und Schneider'),
('Never Never', 'Harper Collins Publishers UK'),
('The Happy Child', 'Palmetto Publishing'),
('The Book of Gods', 'CreateSpace Independent Publishing Platform'),
('Cultures through the Ages', 'Villard Books'),
('It', 'Viking')
;
SELECT * FROM tbl_Books;

CREATE TABLE tbl_Book_Authors (
Book_ID INT NOT NULL,
Author_Name VARCHAR(70) NOT NULL,
Book_Name VARCHAR(70) NOT NULL
);

INSERT INTO tbl_Book_Authors
(Author_Name, Book_Name)
VALUES
('Mark Lee', 'The lost Tribe'),
('Hans-Christian Andersen', 'The Tale of the Nightingale'),
('Richard Burton', 'Stories of 1001 Nights'),
('Ari Kehlman', 'American History'),
('Anon', 'Arts in the Battlefield, Guide to WOWC'),
('Amy Reid', 'Welcome home?'),
('Marissa Marchan', 'RaY oF sUnShInE'),
('Waltraud Lewin', 'Insel der Hoffnung'),
('Mende Nazar', 'Slave'),
('Catherine Trieschmann', 'Where the World began'),
('Astrid Lindgren', 'Pippi Lanstrumpf'),
('John Leonard', 'Hooks Treasure'),
('Gideon Defoe', 'The Pirates!'),
('Luca Di Fulvio', 'The Boy who granted Dreams'),
('Wilhelm Busch', 'Max und Moritz'), 
('Tarryn Fischer', 'Never Never'),
('Sky Borrozo', 'The Happy Child'),
('Chuck Harrison', 'The Book of Gods'),
('R.U.Sirius', 'Cultures through the Ages'),
('Stephen King', 'It')
;
SELECT * FROM tbl_Book_Authors;

CREATE TABLE tbl_Borrower (
Card_No INT PRIMARY KEY IDENTITY(80,1)
Borrower_Name VARCHAR(70) NOT NULL,
Borrower_Adress VARCHAR(120),
Borrower_Phone INT
);

INSERT INTO tbl_Borrower
(Borrower_Name, Borrower_Adress, Borrower_Phone)
VALUES
('Kathy Niam', 'Storington Road 34, Sharpstown, Iowa', '862-249-186'),
('Lee Cha', 'Huntington Bride,  Lower Huntington, Huntington, Texas', '423-593-333'),
('Miranda Obbles', 'Valverde Road 23, Upper Town, Grimm-Rock, Iceland', '409-382-298'),
('Gina Gujares', 'Flaveria Lane 44, Quebec, Canada', '690-590-309'),
('Valentinio Antoni', 'Geraldine Street 67, Wavering, Ireland' '873-994-553'),
('Betty Smores', 'Marshall Place 4, Kennedy Park, Huntington, Texas', '423-399-222'),
('Ingrid Snoere', 'Maraoki Boulevard, Artemis Temple, Athens, Greece','900-284-111'),
('Birgit Limba', 'Hannover Kai 456, Kai 2, Hannover, Germany','049-291-817')
;
SELECT * FROM tbl_Borrower;

Create table tbl_Book_Loans (
Book_ID INT NOT NULL,
Branch_ID INT NOT NULL,
Card_No INT NOT NULL,
Date_Out INT NOT NULL,
Date_Due INT NOT NULL,
Book_Name VARCHAR(80) NOT NULL
);

INSERT INTO tbl_Book_Loans
(Date_Out, Date_Due, Book_Name)
VALUES
('23.04.2022', '07.05.2022', 'The Happy Child'),
('23.04.2022', '07.05.2022', 'The Lost Tribe'),
('14.02.2023', '21.02.2023', 'Welcome Home?'),
('30.04.2022', '14.05.2022', 'It'),
('02.05.2022', '17.05.2022', 'Where the World began'),
('05.06.2022', '24.06.2022', 'Hooks Treasure'),
('19.08.2022', '02.09.2022', 'The Tale of the Nightingale'),
('01.10.2022', '15.10.2022', 'American History'),
('07.10.2022', '21.10.2022', 'The Book of Gods'),
('27.11.2022', '11.12.2022', 'The Boy who grantend Dreams')
;
SELECT * FROM tbl_Book_Loans;

CREATE TABLE tbl_Publisher (
Publisher_Name VARCHAR(80) NOT NULL FOREIGN KEY,
Publisher_Adress VARCHAR(120) NOT NULL,
Publisher_Phone INT
);

INSERT INTO tbl_Publisher 
(Publisher_Name, Publisher_Adress, Publisher_Phone)
VALUES
('St. Martins Press', 'Evergreen Lane 23, England', '708-803'), 
('Kama Shastra Society', '5th Avenue, Manhatten, New York', '900-300-892'),
('Simon Schuster', 'Gold Strasse 44, Mainz, Germany', '409-309-999'),
('Ravensburger', 'Old Tavern Street, Ravensburg, Germany', '805-704-509'),
('Little Oaks Publishing', 'Flinsbury Park 34, District 4, Oakland, Ohio', '703-339-499'),
('Palmetto Publishing', 'Oldenford Seaport 310, Kai 48, Virginia', '304-208-119'),
('Harper Collins Publishers UK', 'Hildeford Lakeview 203, Unit 2-7, Iowa', '309-208-187'),
('CreateSpace Independent Publishing Platform', 'Montgommery Road 67, Mount Montgommery, Kentucky', '229-338-185'),
('Villard Books', 'Filigante Road 89, Berlin, Germany', '049-392-187'),
('Viking', 'Fjordstreet 38, Ngorske, Norway', '339-291-297')
;
SELECT * FROM tbl_Publisher;

SELECT * FROM ((Book_Loans FULL OUTER JOIN Borrower ON Book_Loans.Card_No = Borrower.Card_No) FULL OUTER JOIN Books ON Book_Loans.Book_ID = Books.BookID);
SELECT * FROM (Books FULL OUTER JOIN Books ON Book_Authors.Author_Name = Books.Authors);
SELECT * FROM ((Book_Copies FULL OUTER JOIN Book_Copies.Number_of_Copies ON  Books.Book_Name 'The lost Tribe' = BookCopies.BookName) FULL OUTER JOIN BookCopies.BookName 'The lost Tribe' ON Library_Banch.Branch_Name 'Sharpstown');
SELECT * FROM ((Book_Copies FULL OUTER JOIN Book_Copies.Number_of_Copies ON Books.Book_Name 'The lost Tribe' = Book Copies.BookName) FULL OUTER JOIN  BookCopies.BookName 'The lost Tribe' ON Library_Branch.Branch_Name);

END
Execute [dbo].[createLibraryDB]