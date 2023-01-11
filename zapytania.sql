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
SELECT * FROM customers ;
SELECT * FROM orders RIGHT JOIN employees ON orders.employee_id=employees.id;
SELECT * FROM customers WHERE customers.id<>customers.id AND customers.city=customers.city ORDER BY city;





SELECT * FROM orders LIMIT 10 OFFSET 15;
SELECT * FROM orders LIMIT 10 OFFSET 10;








SELECT COUNT(customersid), country FROM customer GROUP BY country HAVING COUNT(customerid) > 5;
SELECT * FROM customers HAVING COUNT (orders.customer_id)>1;
SELECT employees.last_name, COUNT (orders.id) AS NumberOfOrders FROM (orders INNER JOIN employees ON orders.id = employees.id) GROUP BY lastname HAVING COUNT(orders.id) > 10;
SELECT employees.last_name, COUNT(orders.id) AS NumberOfOrders FROM orders INNER JOIN employees ON orders.employee_id = employees.id WHERE last_name = 'Davolio' OR last_name = 'Fuller' GROUP BY last_name HAVING COUNT(orders.id) > 25;
SELECT * FROM suppliers WHERE EXISTS (SELECT * FROM products WHERE price<20);
SELECT * FROM suppliers WHERE EXISTS (SELECT * FROM products WHERE price=22);




SELECT * FROM products WHERE product_id=ANY (SELECT product_id FROM order_details WHERE quantity=10);
SELECT * FROM products WHERE product_id=ANY (SELECT product_id FROM order_details WHERE quantity<22);
SELECT ALL name FROM products WHERE TRUE;
SELECT * FROM products,orders_details WHERE product_id=ALL (SELECT product_id FROM orders_details WHERE quantity=10);






SELECT order_id,quantity, CASE 
WHEN quantity>30 THEN 'liczba sztuk jest wieksza niz 30'
WHEN quantity=30 THEN 'liczba sztuk jest rowna 30'
ELSE 'liczba sztuk jest mniejsza od 30'
END AS WYNIK
FROM orders_details;
