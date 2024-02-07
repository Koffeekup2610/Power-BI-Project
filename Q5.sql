SELECT product_category, SUM(profit) AS total_profit
FROM sales
WHERE EXTRACT(YEAR FROM date) = 2021
  AND region = 'Wiltshire, UK'
GROUP BY product_category
ORDER BY total_profit DESC
LIMIT 1;