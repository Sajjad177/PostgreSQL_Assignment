
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
('Eloquent JavaScript', 'Marijn Haverbeke', 32.50, 0, 2018),
('The Art of Computer Programming', 'Donald Knuth', 120.00, 2, 1968),
('Code Complete', 'Steve McConnell', 48.00, 5, 2004),
('the Theory of Computation', 'Michael Sipser', 60.00, 14, 1996),
('The Clean Coder', 'Robert C. Martin', 38.00, 0, 2011),
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
INSERT INTO customers (name, email, join_date) VALUES
('Alice Johnson', 'alice.johnson@example.com', '2021-01-01'),
('Bob Smith', 'bob.smith@example.com', '2022-02-02'),
('Charlie Brown', 'charlie.brown@example.com', '2023-10-03'),
('Emma Davis', 'emma.davis@example.com', '2024-01-02'),
('Frank Miller', 'frank.miller@example.com', '2025-01-03'),
('Henry Lee', 'henry.lee@example.com', '2022-07-07'),
('Isabella Harris', 'isabella.harris@example.com', '2023-08-08'),
('Grace Taylor', 'grace.taylor@example.com', CURRENT_DATE),
('Jack White', 'jack.white@example.com', CURRENT_DATE),
('Lucy Clark', 'lucy.clark@example.com', '2021-01-01');


-- show all the customers 
SELECT * FROM customers;



-- TODO: 3. Create a table called orders
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,  
    customer_id INT NOT NULL, 
    book_id INT NOT NULL,
    quantity INT CHECK (quantity > 0) NOT NULL, 
    order_date DATE DEFAULT CURRENT_DATE
);


-- Insert the following data into the orders table
INSERT INTO orders (customer_id, book_id, quantity, order_date) VALUES
(1, 1, 2, '2023-01-01'),
(2, 2, 1, '2024-07-02'),
(3, 10, 5, '2025-03-03'),
(4, 2, 2, '2024-09-24'),
(4, 4, 2, CURRENT_DATE),
(5, 5, 2, '2020-09-06'),
(6, 6, 4, CURRENT_DATE),
(1, 6, 1, CURRENT_DATE),
(2, 10, 2, '2023-12-10');


-- show all the orders
SELECT * FROM orders;



-- TODO: P1. Find books that are out of stock.
SELECT title FROM books WHERE stock = 0;



-- TODO: P2.Retrieve the most expensive book in the store.
SELECT * FROM books WHERE price = (SELECT MAX(price) FROM books);



-- TODO: P3. Find the total number of orders placed by each customer.
SELECT customers.name, COUNT(orders.quantity) AS total_orders
FROM customers
JOIN orders ON customers.id = orders.customer_id
GROUP BY customers.name;


-- TODO: P4. Calculate the total revenue generated from book sales.
SELECT SUM(price * quantity) AS total_revenue
FROM orders
JOIN books ON orders.book_id = books.id;



-- TODO: P5. List all customers who have placed more than one order.
SELECT customers.name, COUNT(orders.quantity) AS orders_count
FROM customers
JOIN orders ON customers.id = orders.customer_id
GROUP BY customers.name
HAVING COUNT(orders.quantity) > 1;



-- TODO: P6. Find the average price of books in the store.
SELECT ROUND(AVG(price), 2) AS avg_book_price
FROM books;



-- TODO: P7. Increase the price of all books published before 2000 by 10%.
UPDATE books
SET price = price * 1.1
WHERE published_year < 2000;

-- show all the books after update 10%
SELECT * FROM books;



-- TODO: P8. Delete customers who haven't placed any orders.
DELETE FROM customers
WHERE id NOT IN (SELECT DISTINCT customer_id FROM orders);


-- show all the customers after delete
SELECT * FROM customers;