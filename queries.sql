SELECT customer_name FROM customer WHERE customer_name LIKE 'Ma%';

SELECT order_id, COUNT(item_id) AS item_count, SUM(quantity * unit_price) AS total_price FROM item
NATURAL JOIN order_item
GROUP BY order_id;

SELECT order_id FROM order NATURAL JOIN shipment NATURAL JOIN warehouse
WHERE warehouse_city = 'Arica';

SELECT SUM(unit_price * quantity) AS total_price FROM order_item NATURAL JOIN item NATURAL JOIN shipment
WHERE warehouse_id = 8;