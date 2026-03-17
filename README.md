# SQL Library Management System

A beginner-level SQL project for managing a small library system using three core areas:
- Books
- Members
- Borrow History


## Project Goals
This project demonstrates:
- Table creation with primary keys and foreign keys
- Inserting sample data
- Running beginner-friendly SQL queries
- Using SELECT, WHERE, JOIN, GROUP BY, ORDER BY, and aggregate functions

## Files
- `schema.sql` – creates the database tables
- `sample_data.sql` – inserts example records
- `queries.sql` – useful beginner SQL queries
- `README.md` – project overview

## Tables

### 1. books
Stores book information.
- book_id
- title
- author
- category
- published_year
- available_copies

### 2. members
Stores library member details.
- member_id
- first_name
- last_name
- email
- phone
- join_date

### 3. borrow_history
Tracks which member borrowed which book.
- borrow_id
- member_id
- book_id
- borrow_date
- return_date

## Example Business Questions Answered
- Which books are currently available?
- Which members borrowed books?
- Which books were borrowed the most?
- How many books has each member borrowed?
- Which books have not been returned yet?

## Resume Project Description
**SQL Library Management System**
- Built a SQL database for managing books, members, and borrow records
- Created relational tables with primary and foreign keys
- Wrote SQL queries using joins, filtering, grouping, and aggregate functions
- Used the database to answer common library and reporting questions



