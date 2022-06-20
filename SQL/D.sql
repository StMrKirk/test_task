SELECT 
	sum(price) as total_income,
    ROUND((SUM(price) * 100.0 / SUM(SUM(price)) OVER ())::NUMERIC, 2) AS percentage,
    purchases.itemId
FROM purchases JOIN items ON purchases.itemId = items.itemId
WHERE date >= date '2015-01-01'
GROUP BY purchases.itemid
ORDER BY total_income DESC
LIMIT 3