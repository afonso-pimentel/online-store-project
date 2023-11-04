-- Insert categories
INSERT INTO categories (name) VALUES ('Electronics');
INSERT INTO categories (name) VALUES ('Clothing');
INSERT INTO categories (name) VALUES ('Books');

-- Insert tags
INSERT INTO tags (name) VALUES ('New Arrival');
INSERT INTO tags (name) VALUES ('Best Seller');
INSERT INTO tags (name) VALUES ('Discounted');

-- Insert products
INSERT INTO products (name, description, price, stockQuantity, imageUrl, category_id) VALUES
  ('Laptop', 'A high-performance laptop.', 999.99, 10, 'https://cdn.thewirecutter.com/wp-content/media/2023/06/laptops-2048px-5607.jpg?auto=webp&quality=75&crop=1.91:1&width=1200', 1),
  ('T-shirt', 'A comfortable cotton T-shirt.', 19.99, 50, 'https://isto.pt/cdn/shop/files/Classic_T-shirt_Black_1_4b42b483-c2cf-46f6-805c-90bd905b4338.webp?v=1685716490', 2),
  ('Novel', 'A bestselling novel.', 9.99, 100, 'https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2022/third-party/Itendswithusbookreview-1671590650.jpg&w=900&height=601', 3);

-- Insert customers
INSERT INTO customers (name, email, address) VALUES
  ('John Doe', 'john.doe@email.com', '123 Main St.'),
  ('Jane Doe', 'jane.doe@email.com', '456 Elm St.');

-- Insert orders
INSERT INTO orders (customer_id, totalPrice, status) VALUES
  (1, 999.99, 'Placed'),
  (2, 29.98, 'Shipped');

-- Insert order_items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
  (1, 1, 1),
  (2, 2, 2);

-- Insert product_tags
INSERT INTO product_tags (product_id, tag_id) VALUES
  (1, 1),
  (1, 2),
  (2, 3);
