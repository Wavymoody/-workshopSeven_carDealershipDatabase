SELECT sc.*
FROM sales_contracts sc
WHERE sc.vin IN (
    SELECT vin FROM inventory WHERE dealership_id = 1
)
AND sc.contract_year BETWEEN 2021 AND 2023;
