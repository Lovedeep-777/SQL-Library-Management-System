-- Sample data for SQL Library Management System

INSERT INTO books (book_id, title, author, category, published_year, available_copies) VALUES
(1, 'Atomic Habits', 'James Clear', 'Self-Help', 2018, 3),
(2, 'The Alchemist', 'Paulo Coelho', 'Fiction', 1988, 2),
(3, 'Clean Code', 'Robert C. Martin', 'Technology', 2008, 4),
(4, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 1997, 1),
(5, 'The Psychology of Money', 'Morgan Housel', 'Finance', 2020, 2),
(6, 'Introduction to Algorithms', 'Thomas H. Cormen', 'Technology', 2009, 1);

INSERT INTO members (member_id, first_name, last_name, email, phone, join_date) VALUES
(101, 'Aman', 'Singh', 'aman.singh@example.com', '250-555-1001', '2026-01-10'),
(102, 'Sara', 'Gill', 'sara.gill@example.com', '250-555-1002', '2026-01-15'),
(103, 'Ravi', 'Kaur', 'ravi.kaur@example.com', '250-555-1003', '2026-02-01'),
(104, 'Neha', 'Sharma', 'neha.sharma@example.com', '250-555-1004', '2026-02-12');

INSERT INTO borrow_history (borrow_id, member_id, book_id, borrow_date, return_date) VALUES
(1001, 101, 1, '2026-02-05', '2026-02-20'),
(1002, 102, 3, '2026-02-10', NULL),
(1003, 103, 2, '2026-02-15', '2026-02-25'),
(1004, 101, 5, '2026-03-01', NULL),
(1005, 104, 4, '2026-03-03', NULL),
(1006, 102, 1, '2026-03-05', NULL);
