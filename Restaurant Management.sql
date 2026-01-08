create database Restaurant_management;
use Restaurant_management;

CREATE TABLE menu_items (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2)
);

INSERT INTO menu_items VALUES
(1, 'Margherita Pizza', 'Main Course', 249),
(2, 'Farmhouse Pizza', 'Main Course', 299),
(3, 'Garlic Bread', 'Starter', 149),
(4, 'French Fries', 'Starter', 99),
(5, 'Chicken Burger', 'Main Course', 199),
(6, 'Veg Burger', 'Main Course', 149),
(7, 'Pasta Alfredo', 'Main Course', 229),
(8, 'Pasta Arrabiata', 'Main Course', 229),
(9, 'Paneer Tikka', 'Starter', 199),
(10, 'Chicken Tikka', 'Starter', 249),
(11, 'Cold Coffee', 'Beverage', 119),
(12, 'Cappuccino', 'Beverage', 149),
(13, 'Mojito', 'Beverage', 129),
(14, 'Brownie', 'Dessert', 149),
(15, 'Gulab Jamun', 'Dessert', 99),
(16, 'Ice Cream', 'Dessert', 89),
(17, 'Caesar Salad', 'Starter', 159),
(18, 'Greek Salad', 'Starter', 169),
(19, 'Chicken Biryani', 'Main Course', 249),
(20, 'Veg Biryani', 'Main Course', 199),
(21, 'Tandoori Roti', 'Main Course', 20),
(22, 'Butter Naan', 'Main Course', 40),
(23, 'Dal Tadka', 'Main Course', 180),
(24, 'Paneer Butter Masala', 'Main Course', 240),
(25, 'Chicken Curry', 'Main Course', 260),
(26, 'Lemon Soda', 'Beverage', 80),
(27, 'Hot Chocolate', 'Beverage', 160),
(28, 'Choco Lava Cake', 'Dessert', 170),
(29, 'Spring Rolls', 'Starter', 140),
(30, 'Hakka Noodles', 'Main Course', 190);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(15)
);

INSERT INTO customers VALUES
(1,'Rohan','Sharma','9876543210'),
(2,'Sneha','Patil','9876500011'),
(3,'Amit','Verma','9823456712'),
(4,'Priya','Nair','9865321478'),
(5,'Suresh','Gupta','9832145678'),
(6,'Rahul','Mishra','9445566778'),
(7,'Anita','Rao','9556677889'),
(8,'Karan','Yadav','9778899001'),
(9,'Riya','Desai','9667788990'),
(10,'Anil','Kumar','9988776655'),
(11,'Neha','Kapoor','9123456789'),
(12,'Mohit','Singh','9345678123'),
(13,'Tina','Shah','9456123789'),
(14,'Vikas','Chaudhary','9991112233'),
(15,'Meera','Iyer','9012345678'),
(16,'Alok','Sengar','9786541230'),
(17,'Pooja','Rajput','9898989898'),
(18,'Manish','Pandey','9765432187'),
(19,'Divya','Joshi','9654321987'),
(20,'Rakesh','Shetty','9543219876'),
(21,'Lakshmi','Menon','9871200456'),
(22,'Vivek','Kale','8844556677'),
(23,'Sakshi','Pawar','9123459087'),
(24,'Harish','Mehta','9234567890'),
(25,'Reema','Kulkarni','8009001001'),
(26,'Viraj','Deshmukh','7008009001'),
(27,'Payal','Thakur','7778889991'),
(28,'Aarav','Bansal','9090909090'),
(29,'Nisha','Sharma','8080808080'),
(30,'Deepak','Patel','9797979797');

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id));
    
INSERT INTO orders VALUES
(500,1,'2025-01-01',560);

INSERT INTO orders VALUES
(501,1,'2025-01-01',560),
(502,1,'2025-01-01',560),
(503,1,'2025-01-01',560),
(504,1,'2025-01-01',560);

INSERT INTO orders VALUES
(1,1,'2025-01-01',560),
(2,3,'2025-01-02',340),
(3,2,'2025-01-03',225),
(4,5,'2025-01-04',480),
(5,7,'2025-01-05',690),
(6,10,'2025-01-06',330),
(7,4,'2025-01-07',220),
(8,6,'2025-01-08',870),
(9,8,'2025-01-09',150),
(10,9,'2025-01-10',620),
(11,11,'2025-01-11',350),
(12,12,'2025-01-12',410),
(13,14,'2025-01-13',280),
(14,16,'2025-01-14',390),
(15,18,'2025-01-15',760),
(16,20,'2025-01-16',450),
(17,22,'2025-01-17',510),
(18,23,'2025-01-18',640),
(19,25,'2025-01-19',200),
(20,27,'2025-01-20',330),
(21,28,'2025-01-21',590),
(22,30,'2025-01-22',400),
(23,13,'2025-01-23',520),
(24,15,'2025-01-24',235),
(25,17,'2025-01-25',475),
(26,19,'2025-01-26',680),
(27,21,'2025-01-27',310),
(28,24,'2025-01-28',750),
(29,26,'2025-01-29',815),
(30,29,'2025-01-30',420);

CREATE TABLE order_details (
    detail_id INT PRIMARY KEY,
    order_id INT,
    item_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES menu_items(item_id)
);

INSERT INTO order_details VALUES
(1,1,1,2),
(2,1,3,1),
(3,2,4,2),
(4,2,11,1),
(5,3,6,1),
(6,3,14,1),
(7,4,9,2),
(8,4,11,1),
(9,5,2,1),
(10,5,10,1),
(11,6,7,2),
(12,7,4,1),
(13,8,19,2),
(14,8,22,4),
(15,8,26,2),
(16,9,11,1),
(17,10,1,1),
(18,10,7,2),
(19,11,3,1),
(20,12,20,2),
(21,13,5,1),
(22,14,12,1),
(23,15,24,2),
(24,16,25,2),
(25,17,14,1),
(26,18,28,2),
(27,19,15,1),
(28,20,10,1),
(29,21,30,2),
(30,22,8,1);

CREATE TABLE table_bookings (
    booking_id INT PRIMARY KEY,
    customer_id INT,
    booking_date DATE,
    table_no INT,
    guests INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO table_bookings VALUES
(1,1,'2025-01-01',2,4),
(2,2,'2025-01-02',3,2),
(3,3,'2025-01-03',4,5),
(4,4,'2025-01-04',1,3),
(5,5,'2025-01-05',6,6),
(6,6,'2025-01-06',5,4),
(7,7,'2025-01-07',3,2),
(8,8,'2025-01-08',4,4),
(9,9,'2025-01-09',2,3),
(10,10,'2025-01-10',5,5),
(11,11,'2025-01-11',6,6),
(12,12,'2025-01-12',2,2),
(13,13,'2025-01-13',4,4),
(14,14,'2025-01-14',1,2),
(15,15,'2025-01-15',3,3),
(16,16,'2025-01-16',5,5),
(17,17,'2025-01-17',6,4),
(18,18,'2025-01-18',2,2),
(19,19,'2025-01-19',3,4),
(20,20,'2025-01-20',4,2),
(21,21,'2025-01-21',1,3),
(22,22,'2025-01-22',6,6),
(23,23,'2025-01-23',5,5),
(24,24,'2025-01-24',4,3),
(25,25,'2025-01-25',2,4),
(26,26,'2025-01-26',3,2),
(27,27,'2025-01-27',5,5),
(28,28,'2025-01-28',6,6),
(29,29,'2025-01-29',1,2),
(30,30,'2025-01-30',2,3);

select * from customers;
select * from menu_items;
select * from order_details;
select * from orders;
select * from table_bookings;

-- Top 5 most expensive items on the menu

select item_name,price
from menu_items
order by price desc
limit 5;

-- Average price of each category

select category , avg(price) as avg_price
from menu_items
group by category;

-- Most popular item (highest total quantity ordered)

select m.item_name,sum(od.quantity) as total_sold
from order_details od
join menu_items m on od.item_id = m.item_id
group by m.item_name
order by total_sold Desc
limit 1;

-- Which customer placed the highest-value order?

select c.first_name,c.last_name,o.total_amount
from orders o
join customers c on o.customer_id = c.customer_id
order by o.total_amount DESC
limit 1;

-- Total spending by each customer

select c.first_name,c.last_name,sum(o.total_amount) as total_spend
from customers c
join orders o on c.customer_id = o.customer_id
group by c.customer_id,c.first_name,c.last_name
order by total_spend DESC;

-- Daily revenue trend

select order_date, SUM(total_amount) as daily_revenue
from orders
group by order_date
order by order_date;

-- Which table had the maximum guests booked?

select table_no, max(guests) as max_guests
from table_bookings
group by table_no;