SELECT DISTINCT d.*
FROM dealership d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON v.vin = i.vin
WHERE v.color = 'Red' AND v.brand = 'Ford';
