-- 'ORDER BY' is a clause that indicates you can able to sort the result set by a particular column.
-- It is useful to list the data in our result set in particular order.
-- 'DESC' is a keyword used in 'ORDER BY' to sort the results in descending order (hight to low Z-A).

--- 'ORDER BY' Always Goes After the 'WHERE'

SELECT ACADEMY,CREATED_BY FROM CODE_ACADEMY
--WHERE LEN(ACADEMY)>8
ORDER BY ACADEMY ASC, CREATED_BY DESC

-- 'ASC' is a keyword used in 'ORDER BY' to sort the results in ascending order (low to high A-Z).

SELECT * FROM CODE_ACADEMY
WHERE LEN(ACADEMY)>8
ORDER BY CREATED_BY ASC

SELECT * FROM CODE_ACADEMY
WHERE LEN(ACADEMY)>10
ORDER BY ACADEMY DESC
