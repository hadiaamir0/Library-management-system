-- =====================================
-- SAMPLE BOOKS DATA
-- =====================================

INSERT INTO Books
(Title, Author, Category, Quantity, AvailableCopies)
VALUES
('Database Systems','Korth','Education',10,10),
('Operating Systems','Galvin','Education',8,8),
('Computer Networks','Tanenbaum','Networking',15,15),
('Data Structures','Sahni','Programming',12,12),
('Artificial Intelligence','Russell','AI',7,7);


-- =====================================
-- SAMPLE MEMBERS DATA
-- =====================================

INSERT INTO Members
(Name, Email, Phone, MembershipDate)
VALUES
('Ali Khan','ali@gmail.com','03000000000','2025-01-01'),
('Sara Ahmed','sara@gmail.com','03110000000','2025-02-15'),
('Ahmed Raza','ahmed@gmail.com','03220000000','2025-03-01');


-- =====================================
-- SAMPLE STAFF DATA
-- =====================================

INSERT INTO Staff
(StaffName, Position)
VALUES
('Usman Ali','Librarian'),
('Fatima Noor','Assistant Librarian');