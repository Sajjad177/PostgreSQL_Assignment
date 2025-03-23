
--TODO: 1. Create a database called books
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) CHECK(price > 0),
    stock INT CHECK(stock >= 0),
    published_year INT CHECK(published_year > 0)
) 


-- Insert the following data into the books table
INSERT INTO books (title, author, price, stock, published_year) VALUES
('The Mythical', 'Frederick P. Brooks Jr.', 45.00, 7, 1975),
('Design Patterns', 'Erich Gamma, Richard Helm', 55.00, 6, 1994),
('Eloquent JavaScript', 'Marijn Haverbeke', 32.50, 12, 2018),
('The Art of Computer Programming', 'Donald Knuth', 120.00, 2, 1968),
('Code Complete', 'Steve McConnell', 48.00, 5, 2004),
('the Theory of Computation', 'Michael Sipser', 60.00, 4, 1996),
('The Clean Coder', 'Robert C. Martin', 38.00, 8, 2011),
('Head First Design Patterns', 'Eric Freeman, Elisabeth', 42.00, 9, 2004),
('Computer Networking', 'James F. Kurose, Keith', 70.00, 3, 2000),
('Grokking Algorithms', 'Aditya Y. Bhargava', 35.00, 11, 2016);


-- Write a query to display all the books
SELECT * FROM books;



-- TODO:2. create a table called customers
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    join_date DATE DEFAULT CURRENT_DATE
)


-- Insert the following data into the customers table
INSERT INTO customers (name, email) VALUES
('Alice Johnson', 'alice.johnson@example.com'),
('Bob Smith', 'bob.smith@example.com'),
('Charlie Brown', 'charlie.brown@example.com'),
('David Wilson', 'david.wilson@example.com'),
('Emma Davis', 'emma.davis@example.com'),
('Frank Miller', 'frank.miller@example.com'),
('Grace Taylor', 'grace.taylor@example.com'),
('Henry Lee', 'henry.lee@example.com'),
('Isabella Harris', 'isabella.harris@example.com'),
('Jack White', 'jack.white@example.com');



-- show all the customers
SELECT * FROM customers;