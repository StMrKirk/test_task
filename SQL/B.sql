SELECT EXTRACT(month from date) AS month, sum(price) AS summed FROM 
  users JOIN purchases ON users.userid = purchases.userid
  JOIN items ON purchases.itemid = items.itemid
  WHERE age > 35
GROUp BY month
ORDER BY summed DESC
LIMIT 1