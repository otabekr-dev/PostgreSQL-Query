SELECT
    city, COUNT(*)
FROM sales
GROUP BY city;

SELECT
    product, COUNT(*)
FROM sales
GROUP BY product;


SELECT
    product, SUM(quantity * price)
FROM sales
GROUP BY product;

SELECT
    city, COUNT(*) AS soni
FROM sales
GROUP BY city
HAVING COUNT(*) >= 2;
