SELECT * FROM owners
    FULL JOIN vehicles
    ON owners.id = vehicles.owner_id;

SELECT first_name, last_name, COUNT(vehicles.id)
    FROM owners
    JOIN vehicles
    ON owners.id = vehicles.owner_id
    GROUP BY first_name, last_name
    ORDER BY first_name ASC;

SELECT first_name, last_name, COUNT(vehicles.id), AVG(vehicles.price) AS average_price
    FROM owners
    JOIN vehicles
    ON owners.id = vehicles.owner_id
    GROUP BY first_name, last_name
    HAVING COUNT(vehicles.id) > 1 AND AVG(vehicles.price) > 10000
    ORDER BY first_name DESC;

