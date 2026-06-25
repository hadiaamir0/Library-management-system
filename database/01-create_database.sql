-- =====================================
-- LIBRARY MANAGEMENT SYSTEM DATABASE
-- =====================================

CREATE DATABASE LibraryManagementSystem;

USE LibraryManagementSystem;


-- =====================================
-- BOOKS TABLE
-- =====================================

CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Quantity INT,
    AvailableCopies INT
);


-- =====================================
-- MEMBERS TABLE
-- =====================================

CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(20),
    MembershipDate DATE
);


-- =====================================
-- STAFF TABLE
-- =====================================

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY AUTO_INCREMENT,
    StaffName VARCHAR(100),
    Position VARCHAR(50)
);


-- =====================================
-- ISSUED BOOKS TABLE
-- =====================================

CREATE TABLE IssuedBooks (
    IssueID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    MemberID INT,
    IssueDate DATE,
    ReturnDate DATE,
    Status VARCHAR(20),

    FOREIGN KEY (BookID)
    REFERENCES Books(BookID),

    FOREIGN KEY (MemberID)
    REFERENCES Members(MemberID)
);