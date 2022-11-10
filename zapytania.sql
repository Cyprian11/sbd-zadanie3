SELECT * FROM customers WHERE country="Germany";
SELECT * FROM customers WHERE city="Berlin";
SELECT * FROM customers WHERE country="Germany" AND city="Berlin";
SELECT * FROM customers WHERE country="Germany" AND (city="Berlin" OR city="München");
SELECT * FROM customers WHERE country!="Germany" AND country!="USA";
SELECT * FROM customers ORDER BY country ASC;
SELECT * FROM customers ORDER BY country DESC;
SELECT * FROM customers ORDER BY country DESC, customer_name ASC;


SELECT MIN(price) FROM products GROUP BY category_id;
SELECT MAX(price) FROM products GROUP BY category_id;
SELECT SUM(products_id) FROM products;
SELECT SUM(id) FROM customers;
SELECT COUNT(id) FROM customers GROUP BY country;
SELECT COUNT(category_id) AND AVG(price) FROM products WHERE category_id="1";
SELECT SUM(id_products) WHERE category_id="2";
SELECT MAX(price) WHERE category_id="1" AND category_id="2";


SELECT * FROM products WHERE price BETWEEN 10 AND 20;
SELECT * FROM products WHERE price NOT BETWEEN 10 AND 20;
SELECT * FROM products WHERE category_id IN (1,2,3);
SELECT * FROM orders WHERE shipper_id IN (1,2,3);
SELECT * FROM products WHERE price IN (10,15) AND category_id NOT IN(1,2,3,4);
SELECT * FROM orders WHERE order_date BETWEEN "1996-07-01" AND "1996-07-31";
SELECT * FROM (SELECT * FROM products WHERE price BETWEEN 10 AND 20)orders  WHERE customer_id BETWEEN"77"AND "90";



SELECT * FROM customers JOIN orders ON orders.customer_id=customers.id;
SELECT COUNT(orders.id) FROM customers JOIN orders ON orders.customer_id=customers.id GROUP BY customer_id;  

 






