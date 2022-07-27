-- DELETE FROM movie WHERE movie_id=3;

-- DROP TABLE movie CASCADE;

UPDATE customer
SET email = 'JillGoodacre@ATMvestibule.com'
WHERE customer_id = 1;

UPDATE concession
SET price = 20.00, quantity = 10
WHERE item = 'coke';

UPDATE concession
SET price = 6.99
WHERE item = 'hot-dog';