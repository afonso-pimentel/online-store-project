-- Insert categories
INSERT INTO categories (name) VALUES ('Electronics');
INSERT INTO categories (name) VALUES ('Clothing');
INSERT INTO categories (name) VALUES ('Books');
INSERT INTO categories (name) VALUES ('Gins');

-- Insert tags
INSERT INTO tags (name) VALUES ('New Arrival');
INSERT INTO tags (name) VALUES ('Best Seller');
INSERT INTO tags (name) VALUES ('Discounted');

-- Insert products
-- Electronics
INSERT INTO products (name, description, price, stock_quantity, image_url, category_id) VALUES
  ('Laptop', 'A high-performance laptop.', 999.99, 10, 'https://cdn.thewirecutter.com/wp-content/media/2023/06/laptops-2048px-5607.jpg?auto=webp&quality=75&crop=1.91:1&width=1200', 8);

-- Clothing
INSERT INTO products (name, description, price, stock_quantity, image_url, category_id) VALUES
  ('T-shirt', 'A comfortable cotton T-shirt.', 19.99, 50, 'https://isto.pt/cdn/shop/files/Classic_T-shirt_Black_1_4b42b483-c2cf-46f6-805c-90bd905b4338.webp?v=1685716490', 9);

-- Books
INSERT INTO products (name, description, price, stock_quantity, image_url, category_id) VALUES
  ('Novel', 'A bestselling novel.', 9.99, 100, 'https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2022/third-party/Itendswithusbookreview-1671590650.jpg&w=900&height=601', 10);

-- Insert Gins
INSERT INTO products (name, description, price, stock_quantity, image_url, category_id) VALUES
  ('Empress 1908 Gin 750 ml', 'A vividly colored gin with a unique flavor.', 45.99, 20, 'https://cdn.shopify.com/s/files/1/0076/4392/2502/products/Empress-1908-Gin-750_large.png?v=1607110507', 11),
  ('Distillery No. 209 Gin Kosher For Passover - 750ml Bottle', 'A premium kosher gin for Passover.', 39.99, 15, 'https://cdn.shopify.com/s/files/1/0076/4392/2502/products/DistilleryNo.209GinKosherForPassover-_750mlBottle_large.png?v=1592266150', 11),
  ('Barr Hill Tom Cat Gin - 750ml', 'An aged gin with a honey-infused flavor.', 54.99, 10, 'https://cdn.shopify.com/s/files/1/0076/4392/2502/products/BarrHillTomCatGin_large.png?v=1589747511', 11),
  ('Whitley Neill Quince Gin - 750ml Bottle', 'A quince-infused gin with a unique aroma.', 32.99, 25, 'https://cdn.shopify.com/s/files/1/0076/4392/2502/products/whitley_neill_quince_gin_large.jpg?v=1580079484', 11),
  ('Whitley Neill Blood Orange Gin - 750ml Bottle', 'A citrusy gin with a vibrant flavor of blood orange.', 32.99, 25, 'https://cdn.shopify.com/s/files/1/0076/4392/2502/products/whitley_neill_blood_orange_large.jpg?v=1580079452', 11),
  ('Barr Hill Gin - 750ml Bottle', 'A gin made with raw northern honey.', 42.99, 20, 'https://cdn.shopify.com/s/files/1/0076/4392/2502/products/Barr_Hill_Gin_large.jpg?v=1589747447', 11),
  ('Wisconsin Club Gin - 1L Bottle', 'A traditional gin with a rich history.', 19.99, 30, 'https://cdn.shopify.com/s/files/1/0076/4392/2502/products/Wisconsin_Club_Gin_large.jpg?v=1580079544', 11),
  ('Bombay Sapphire London Dry Gin - 750ml Bottle', 'A world-renowned gin with a balanced flavor.', 26.99, 40, 'https://cdn.shopify.com/s/files/1/0076/4392/2502/products/Bombay-Sapphire-Gin-750-ml_large.png?v=1589749384', 11),
  ('Gin Mare Mediterranean Gin Kosher - 750ml Bottle', 'A Mediterranean gin with a blend of unique botanicals.', 39.99, 20, 'https://cdn.shopify.com/s/files/1/0076/4392/2502/products/Gin_Mare_Mediterranean_Gin_Kosher_large.jpg?v=1576010490', 11),
  ('Tanqueray London Dry Gin - 750ml Bottle', 'A classic gin known for its pristine quality.', 33.99, 50, 'https://cdn.shopify.com/s/files/1/0076/4392/2502/products/Tanqueray-Gin-750-ml_1_large.png?v=1574094139', 11),
  ('Hendricks Gin - 750ml Bottle', 'A uniquely infused gin with cucumber and rose.', 35.99, 30, 'https://cdn.shopify.com/s/files/1/0076/4392/2502/products/Hendricks-Gin-750-ml_1_large.png?v=1574091774', 11);

-- Insert customers
INSERT INTO customers (name, email, address) VALUES
  ('John Doe', 'john.doe@email.com', '123 Main St.'),
  ('Jane Doe', 'jane.doe@email.com', '456 Elm St.');

-- Insert orders
INSERT INTO orders (customer_id, total_price, status) VALUES
  (4, 999.99, 'Placed'),
  (5, 29.98, 'Shipped');

-- Insert order_items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
  (1, 1, 1),
  (2, 2, 2);

-- Insert product_tags
INSERT INTO product_tags (product_id, tag_id) VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (5, 2); -- Assuming 'Empress 1908 Gin 750 ml' is product_id 5 and 'Best Seller' is tag_id 2
