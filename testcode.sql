create table Book(Book_Id int NOT NULL,Title varchar(30),Language_Id int,MRP number(8,3),Publisher_Id int,Published_Date date,Volume int,Status varchar(20),PRIMARY KEY(Book_Id));

create table Author(Author_Id int NOT NULL,Name varchar(30),Email varchar(30),Phone_Number int,Status varchar(20),PRIMARY KEY(Author_Id));

create table Book_Author(Book_Id int NOT NULL,Author_Id int NOT NULL,Primary key(Author_id,Book_id));

create table Publisher(Publisher_Id int NOT NULL,Name varchar(30),Address varchar(30),Primary key(Publisher_Id));

create table Member(Member_Id int NOT NULL,Name varchar(30),Branch_Code int,Roll_Number int,Phone_Number int,Email_Id varchar(30),Date_of_Join date,Status varchar(20),PRIMARY KEY(Member_Id));

create table Book_Issue(Issue_Id int NOT NULL,Date_of_Issue date,Book_Id int,Member_Id int,Expected_Date_of_Return date,Status varchar(20),primary key(Issue_Id));

create table Book_Return(Issue_Id int NOT NULL,Actual_Date_of_return date,Late_Days int,Late_Fee number(8,3),Primary Key(Issue_Id));

create table Language(Language_Id int not null,Name varchar(30),Primary key(Language_Id));

create table Late_Fee_Rule(FromDays date,ToDays date,Amount number(8,3));

alter table Book add foreign key(Language_Id) References Language(Language_Id);

alter table book add foreign key(Publisher_Id) References Publisher(Publisher_id);

alter table book_author add foreign key(Author_id) references author(Author_id);

alter table book_author add foreign key(Book_id) references book(book_id);

alter table book_return add  foreign key(Issue_Id) references book_issue(Issue_Id);

alter table book_issue add foreign key(Book_id) references book_author(book_id);


insert into language values(12,'English'); 
insert into publisher values(16,'Jaidon Gill Shajan','Pala');
insert into book values(10,'DBMS',12,100,16,'20-OCT-22',10,'Available');
insert into book values(11,'Java',12,100,16,'20-OCT-22',15,'Available'); 
insert into author values(1,'Sasi','sasi@gmail.com',954487512,'yes');
insert into author values(2,'Allen','allen@gmail.com',954465612,'yes');
insert into book_author values(10,1);
insert into book_author values(11,2);
insert into member values(102,'Raju',14,40,87454524,'raju@gmail.com','10-JAN-87','no');
insert into member values(103,'Fida',16,42,76574524,'fida@gmail.com','10-JAN-22','yes');
insert into book_issue values (222,'17-OCT-22',10,102,'30-NOV-22','yes');
insert into book_issue values (223,'17-OCT-22',10,103,'30-NOV-22','yes');
