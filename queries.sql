-- SQL queries for Library Management System

-- 1. View all books
SELECT * FROM books;

-- 2. View all members
SELECT * FROM members;

-- 3. View borrow history
SELECT * FROM borrow_history;

-- 4. Show books currently available
SELECT title, author, available_copies
FROM books
WHERE available_copies > 0;

-- 5. Show all borrowed books with member names
SELECT 
    bh.borrow_id,
    m.first_name,
    m.last_name,
    b.title,
    bh.borrow_date,
    bh.return_date
FROM borrow_history bh
JOIN members m ON bh.member_id = m.member_id
JOIN books b ON bh.book_id = b.book_id
ORDER BY bh.borrow_date;

-- 6. Show books not yet returned
SELECT 
    m.first_name,
    m.last_name,
    b.title,
    bh.borrow_date
FROM borrow_history bh
JOIN members m ON bh.member_id = m.member_id
JOIN books b ON bh.book_id = b.book_id
WHERE bh.return_date IS NULL;

-- 7. Count how many books each member borrowed
SELECT 
    m.member_id,
    m.first_name,
    m.last_name,
    COUNT(bh.borrow_id) AS total_books_borrowed
FROM members m
LEFT JOIN borrow_history bh ON m.member_id = bh.member_id
GROUP BY m.member_id, m.first_name, m.last_name
ORDER BY total_books_borrowed DESC;

-- 8. Find the most borrowed books
SELECT 
    b.book_id,
    b.title,
    COUNT(bh.borrow_id) AS times_borrowed
FROM books b
LEFT JOIN borrow_history bh ON b.book_id = bh.book_id
GROUP BY b.book_id, b.title
ORDER BY times_borrowed DESC;

-- 9. Show members who joined after February 1, 2026
SELECT *
FROM members
WHERE join_date > '2026-02-01';

-- 10. Show finance or technology books
SELECT title, category
FROM books
WHERE category IN ('Finance', 'Technology');

-- 11. Total number of books in the library
SELECT COUNT(*) AS total_books
FROM books;

-- 12. Average available copies
SELECT AVG(available_copies) AS avg_available_copies
FROM books;
