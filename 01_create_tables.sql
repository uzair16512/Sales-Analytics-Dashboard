CREATE DATABASE sales_portfolio;
USE sales_portfolio;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(80),
  city VARCHAR(60),
  region VARCHAR(30),
  signup_date DATE
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(80),
  category VARCHAR(40),
  unit_price DECIMAL(10,2)
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  channel VARCHAR(20),
  status VARCHAR(20)
);

CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  unit_price DECIMAL(10,2),
  discount_pct DECIMAL(5,2)
);
