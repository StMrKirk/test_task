SELECT 
    sum(price) AS income,
    purchases.itemId 
FROM purchases JOIN items ON purchases.itemId = items.itemId
WHERE date >= DATE '2015-01-01'
GROUP BY purchases.itemid
ORDER BY income DESC
LIMIT 1