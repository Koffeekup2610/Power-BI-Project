
CREATE OR REPLACE VIEW store_summary_view AS
SELECT
    store_type,
    SUM(revenue) AS total_sales,
    (SUM(revenue) / SUM(SUM(revenue)) OVER ()) * 100 AS percentage_of_total_sales,
    COUNT(*) AS order_count
FROM
    sales
GROUP BY
    store_type;
