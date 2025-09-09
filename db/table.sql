CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  price_cents INT NOT NULL,
  in_stock BOOLEAN NOT NULL DEFAULT true
);

SELECT * FROM products;

INSERT INTO products (name, description, price_cents, in_stock)
VALUES ('Coffee Mug', 'Ceramic mug', 899, true);

SELECT * FROM products;