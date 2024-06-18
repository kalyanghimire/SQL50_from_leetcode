# Write your MySQL query statement below

SELECT DISTINCT product_id,year as first_year , quantity,price FROM Sales WHERE (product_id, year) IN 
(SELECT product_id, MIN(year) FROM Sales GROUP BY 1
    )