SELECT warehouse_id, warehouse_city, COUNT(order_id) AS total_orders FROM warehouse 
LEFT JOIN shipment using(warehouse_id) GROUP BY warehouse_id;

SELECT customer_name, COUNT(order_id) AS total_orders FROM customer 
LEFT JOIN `order` using(customer_id) GROUP BY customer_id;

SELECT item_id FROM item WHERE item_id NOT IN (SELECT DISTINCT item_id FROM order_item);