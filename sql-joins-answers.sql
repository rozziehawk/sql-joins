--1)
SELECT * FROM owners o FULL JOIN vehicles v on o.id = v.owner_id;
--2)
SELECT first_name, last_name, count(*) FROM vehicles v INNER JOIN owners o ON v.owner_id = o.i
d GROUP BY o.id ORDER BY first_name;
--3)
SELECT first_name, last_name, ROUND(AVG(price)) as avg_price, count(*) AS num_vehicles FROM vehicles v INNER JOIN owners o on v.owner_id = o.id GROUP BY o.id HAVING COUNT(*) > 1 AND ROUND(AVG(price)) > 10000 ORDER BY first_name DESC;
