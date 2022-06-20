SELECT 
    avg(price),
    EXTRACT(month from date) AS month
FROM users JOIN purchases ON users.userid = purchases.userid
JOIN items ON purchases.itemid = items.itemid
WHERE age BETWEEN 18 AND 25
GROUP BY EXTRACT(month FROM date);

SELECT 
    avg(price),
    EXTRACT(month FROM date) AS month
FROM users JOIN purchases ON users.userid = purchases.userid
JOIN items ON purchases.itemid = items.itemid
WHERE age BETWEEN 26 AND 35
GROUP BY EXTRACT(month FROM date);


