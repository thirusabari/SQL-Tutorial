-- 'LEFT JOIN' Statement
-- A 'LEFT JOIN' will keep all rows from the first table, regardless of whether there is a matching row in the second table.

SELECT * FROM Countries
LEFT JOIN Districts ON Countries.DistrictId=Districts.DistrictId;


SELECT * FROM Countries
LEFT JOIN Districts ON Countries.DistrictId=Districts.DistrictId
WHERE Districts.DistrictId>5;