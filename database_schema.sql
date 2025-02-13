-- Create the database
CREATE DATABASE zomoto;

-- Use the database
USE zomoto;

-- Create the items table
CREATE TABLE items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(50) NOT NULL
);

-- Create the orders table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    item_id INT NOT NULL,
    quantity INT NOT NULL,
    delivery_address VARCHAR(255) NOT NULL,
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);
