create database project1;
use project1;
create table users (
    id int auto_increment primary key,
    name varchar(255),
    mobile varchar(255),
    email varchar(255),
    password varchar(255),
    address text
);
create table items (
    item_id int auto_increment primary key,
    item_name varchar(255) not null,
    price decimal(10, 2) not null
) auto_increment = 111;
create table orders (
    id int auto_increment primary key,
    user_id int,
    delivery_address text,
    payment_method varchar(50),
    total_price decimal(10, 2),
    status varchar(50),
    order_date datetime,
    foreign key (user_id) references users(id) on delete cascade
);
CREATE TABLE order_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    item_name VARCHAR(255),
    item_price DECIMAL (10, 2),
    item_quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders (id) ON DELETE CASCADE
);    
INSERT INTO items (item_name, price)
VALUES
('Apple', 2.00),
('Banana', 1.50),
('Orange', 1.80),
('Tomato', 1.20),
('Potato', 1.00),
('Onion', 0.80),
('Grapes', 3.00),
('Carrot', 1.10),
('Pepper', 2.20),
('Cucumber', 1.00);
select * from items;
select * from users;
select * from orders;
select * from order_items;