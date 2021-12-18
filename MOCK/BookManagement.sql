USE master
CREATE DATABASE BookDB
USE BookDB
CREATE TABLE [user] (
	id int PRIMARY KEY identity(1,1),
	[USER_NAME] VARCHAR(30),
	[PASSWORD] VARCHAR(30)	
)
insert into [user] values('tungchu','123456')
insert into [user] values('truongsinh','244466666')
CREATE TABLE [Role] (
	role_id int PRIMARY KEY ,
	authority int,
	FOREIGN KEY (role_id) REFERENCES dbo.[user](id)
)
insert into [Role] values('1','0')
insert into [Role] values('2','1')
CREATE TABLE BookCase(
	book_case_id int PRIMARY KEY identity(1,1),
	book_case_name VARCHAR(30),
	FOREIGN KEY (book_case_id) REFERENCES dbo.[User](id)	
)
CREATE TABLE Book(
	book_id int  identity(1,1) PRIMARY KEY ,
	book_title VARCHAR(30),
	author VARCHAR(30),
	brief VARCHAR(30),
	publisher VARCHAR(30),
	content VARCHAR(300),
	category VARCHAR(30)
)
insert into book values('Sach thieu nhi','Sinh Truong','Khong cho tre em','Duc Quang','Gay mat ngu','ma')
insert into book values('Sach ma','Duc Quang','Danh cho tre em','Truong Sinh','Ngu ngon','hoat hinh')
CREATE TABLE Contain(
	book_case_id int,
	book_id int ,
	create_date VARCHAR(30),
	FOREIGN KEY (book_case_id) REFERENCES bookcase(book_case_id),
	FOREIGN KEY (book_id) REFERENCES Book(book_id),
	PRIMARY KEY(book_id, book_case_id)
)
select * from book 