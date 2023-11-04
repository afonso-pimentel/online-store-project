-- Disable foreign key checks to avoid constraint violations during deletion
SET FOREIGN_KEY_CHECKS = 0;

-- Delete data from child tables first
DELETE FROM order_items;
DELETE FROM product_tags;

-- Delete data from parent tables after child tables have been cleared
DELETE FROM orders;
DELETE FROM products;
DELETE FROM customers;
DELETE FROM tags;
DELETE FROM categories;

-- Enable foreign key checks back after deletion
SET FOREIGN_KEY_CHECKS = 1;
