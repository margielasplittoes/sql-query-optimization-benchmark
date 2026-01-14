DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users (id),
    total_amount NUMERIC,
    created_date TIMESTAMP,
    
);

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL,

);



CREATE TABLE order_items(
    id SERIAL PRIMAY KEY,
    order_id INTEGER REFERENCES order(id),
    product_id INTEGER,
    quantity INTEGER,
    
);


