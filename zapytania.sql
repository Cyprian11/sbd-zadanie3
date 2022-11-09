SELECT * FROM customers WHERE country="Germany";
SELECT * FROM customers WHERE city="Berlin";
SELECT * FROM customers WHERE country="Germany" AND city="Berlin";
SELECT * FROM customers WHERE country="Germany" AND (city="Berlin" OR city="München");
SELECT * FROM customers WHERE country!="Germany" AND country!="USA";
SELECT * FROM customers ORDER BY country ASC;
SELECT * FROM customers ORDER BY country DESC;
SELECT * FROM customers ORDER BY country DESC, customername ASC;


SELECT MIN(price) FROM products GROUP BY category_id;
SELECT MAX(price) FROM products GROUP BY category_id;
SELECT SUM(products_id) FROM products;
SELECT SUM(customers_id) FROM customers;
SELECT COUNT(customers_id) FROM customers ORDER BY country;
SELECT COUNT(category_id) AND AVG(price) FROM products   WHERE category_id="1";
SELECT SUM(id_products) WHERE category_id="2";
SELECT MAX(price) WHERE category_id="1" AND category_id="2";