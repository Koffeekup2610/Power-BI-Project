
SELECT store_type, SUM(revenue) AS total_revenue
FROM sales
WHERE EXTRACT(YEAR FROM date) = 2022
  AND country = 'Germany'
GROUP BY store_type
ORDER BY total_revenue DESC
LIMIT 1;

