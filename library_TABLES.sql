-- create database library;
-- use library;

/**
create table table_name(

column_name and datatype optional constraint,
column_name and datatype optional constraint,
column_name and datatype optional constraint,
.......
constraint contrainst_name contrainst_type(column_name)
); **/

use library;

/**
create table USER (
	userID		INT		NOT NULL,
	fullName		VARCHAR(30)		NOT NULL,
	gender		VARCHAR(10)		NOT NULL,
    address		VARCHAR(60)		NOT NULL,
    phoneNumber		INT		NOT NULL,
    constraint		USER_pk		Primary Key(userID)
);


create table STAFF (
	staffID		INT		NOT NULL,
    fullName	VARCHAR(45)		NOT NULL,
	gender		VARCHAR(45)		NOT NULL,
	emailAddress		VARCHAR(50)		NOT NULL,
    address		VARCHAR(50)		NOT NULL,
    job		VARCHAR(45)		NOT NULL,
    constraint		STAFF_pk		Primary Key(staffID)
);


create table BOOK (
	bookID			INT		NOT NULL,
    bookName		VARCHAR(45)		NOT NULL,
	bookAuthor		VARCHAR(50)		NOT NULL,
    constraint		BOOK_pk		Primary Key(bookID)
);

**/
create table BORROWED (
	referenceID		INT		NOT NULL,
    dateCollected		DATE		NOT NULL,
    dateReturned		VARCHAR(45)		NOT NULL,
    userID		INT		NOT NULL,
    staffID		INT		NOT NULL,
    bookID		INT		NOT NULL,
    constraint		BORROWED_pk		Primary Key(referenceID),
    constraint      BORROWED_USER_FK   Foreign Key(userId)
					references          USER(userId),
	constraint      BORROWED_STAFF_FK  Foreign Key(staffId)
					references          STAFF(staffId),
	constraint      BORROWED_BOOK_FK   Foreign Key(bookId)
					references          BOOK(bookId)
);