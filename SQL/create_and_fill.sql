CREATE TABLE users (
  userId SERIAL PRIMARY KEY,
  age INTEGER
);

INSERT INTO users SELECT generate_series(1, 30), 18 + (40 * random())::INTEGER;

CREATE TABLE purchases (
  purchaseId SERIAL PRIMARY KEY,
  userId INTEGER,
  itemId INTEGER,
  date DATE
);

INSERT INTO purchases SELECT 
	generate_series(1, 50),
    CEIL(30 * random()),
    CEIL(5 * random()),
    (timestamp '2014-01-01 00:00:00' + random() * (timestamp '2015-12-31 23:59:59' -
         		   								   timestamp '2014-01-01 00:00:00'))::date;

CREATE TABLE items (
  itemId SERIAL PRIMARY KEY,
  price REAL
);

INSERT INTO items SELECT generate_series(1, 5), ROUND(random() * 1000);
