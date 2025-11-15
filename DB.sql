CREATE DATABASE Order_processing_System;

USE Order_processing_System;

CREATE TABLE customer (
    customer_id INT NOT NULL AUTO_INCREMENT,
    customer_name VARCHAR(225) NOT NULL,
    city VARCHAR(225) NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE order (
    order_id INT NOT NULL AUTO_INCREMENT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    customer_id INT NOT NULL,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE item (
    item_id INT NOT NULL AUTO_INCREMENT,
    unit_price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (item_id)
);

CREATE TABLE order_item (
    order_id INT NOT NULL,
    item_id INT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (order_id) REFERENCES order(order_id),
    FOREIGN KEY (item_id) REFERENCES item(item_id)
);

CREATE TABLE warehouse (
    warehouse_id INT NOT NULL AUTO_INCREMENT,
    warehouse_city VARCHAR(225) NOT NULL,
    PRIMARY KEY (warehouse_id)
);

CREATE TABLE shipment (
    warehouse_id INT NOT NULL,
    order_id INT NOT NULL,
    ship_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (warehouse_id, order_id),
    FOREIGN KEY (order_id) REFERENCES order(order_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouse(warehouse_id)
);