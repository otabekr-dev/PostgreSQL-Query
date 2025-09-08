-- where
SELECT 
    * 
FROM sales 
WHERE price > 500;

-- between
SELECT 
    * 
FROM sales 
WHERE sale_date BETWEEN '2025-09-03' AND '2025-09-05';

SELECT 
    * 
FROM sales 
WHERE price BETWEEN 300 AND 600;

-- like (%, _)
SELECT 
    * 
FROM sales 
WHERE customer_name LIKE '%noz%'; 

-- ilike (%, _) - case-sensetive
SELECT 
    * 
FROM sales 
WHERE customer_name LIKE '%NOZ%'; 

-- in
SELECT 
    *
FROM sales
WHERE city IN ('Tashkent', 'Samarkand');
