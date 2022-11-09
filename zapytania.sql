SELECT * FROM customers WHERE country="Germany";
SELECT * FROM customers WHERE city="Berlin";
SELECT * FROM customers WHERE country="Germany" AND city="Berlin";
SELECT * FROM customers WHERE country="Germany" AND (city="Berlin" OR city="München");
SELECT * FROM customers WHERE country!="Germany" AND country!="USA";
SELECT * FROM customers ORDER BY country ASC;
SELECT * FROM customers ORDER BY country DESC;
SELECT * FROM customers ORDER BY country DESC, CustomerName ASC;
 