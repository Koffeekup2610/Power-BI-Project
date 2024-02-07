SELECT COUNT(*) AS total_staff
FROM staff s
JOIN stores st ON s.store_id = st.store_id
WHERE st.country = 'UK';