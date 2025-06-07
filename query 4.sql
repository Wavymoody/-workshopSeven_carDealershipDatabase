SELECT d.*
FROM dealership d
JOIN inventory i ON d.dealership_id = i.dealership_id
WHERE i.vin = 1003;
