CREATE TABLE postcodes (
    postcode VARCHAR(20) PRIMARY KEY,
    state VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL
);
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    gender VARCHAR(20),
    DOB DATE,
    job_title VARCHAR(150),
    job_industry_category VARCHAR(150),
    wealth_segment VARCHAR(100),
    deceased_indicator VARCHAR(10),
    owns_car VARCHAR(10),
    address VARCHAR(255),
    postcode VARCHAR(20) REFERENCES postcodes(postcode),
    property INT
);
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    brand VARCHAR(100),
    product_line VARCHAR(100),
    product_class VARCHAR(100),
    product_size VARCHAR(50),
    list_price DECIMAL(10,2),
    standard_cost DECIMAL(10,2)
);
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    product_id INT NOT NULL REFERENCES products(product_id),
    customer_id INT NOT NULL REFERENCES customers(customer_id),
    transaction_date DATE NOT NULL,
    online_order BOOLEAN,
    order_status VARCHAR(50) NOT NULL
);
