-- The case of ITC for investing the data base and Creating the tables - 

CREATE TABLE distributors (
  distributors_id INTEGER PRIMARY KEY,
  name            TEXT NOT NULL,
  city            TEXT,
  region          TEXT,
  phone           TEXT
);

--Dropping the table -----
DROP TABLE distributors;

--Create another table name Products--

-- Create a table name products with following details: Product_ID, Product_Name, Brand, Category, Price and Stock stock should be integer and if it is blank than it should be zero.Products

-- product_id should be integer name and unique and product bname text , not null and unique, brand name text and not null and product category text and not null, price should be in real value and price should be greater than 0. 

CREATE TABLE products (
  product_id INTEGER PRIMARY KEY,
  product_name TEXT NOT NULL UNIQUE,
  brand TEXT,
  category TEXT NOT NULL,
  price REAL CHECK (price> 0),
  stock INTEGER DEFAULT 0
  );

-- Create another table name Sales containing variables, sales id, product id,distributor id, quantity,sales date, amount--
--Qauntity amount

CREATE TABLE sale (
  sale_id INTEGER PRIMARY KEY,
  product_id INTEGER,
  distributor_id INTEGER,
  sales_data TEXT,
  quantity INTEGER CHECK (quantity>0),
  amount REAL,
  FOREIGN KEY (product_id) REFERENCEs products(products_id),
  FOREIGN KEY (distributor_id) REFERENCES distributor(distributor_id)
  );
