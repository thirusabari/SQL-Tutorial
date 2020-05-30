-- 'HAVING' Statment
-- When we want to limit the results of a query based on values of the individual rows, Use 'WHERE'.
-- When we want to limit the results of a query based on an aggregrate property, Use 'HAVING'.
-- 'HAVING' Statement always comes after 'GROUP BY', but before 'ORDER BY' and 'LIMIT'.

SELECT  MovieName, UserRating FROM GroupClause
GROUP BY MovieName,UserRating
HAVING UserRating>70.00;


-- WHERE AND HAVING IN SAME QUERY
-- When we Use 'WHERE' And 'Having' in Same Query, 'WHERE' must always be before any 'GROUP BY', which in turn must be before any 'HAVING'
-- As a Result, data is essentially filtered on the 'WHERE' Condition first, Then, from the filtered data, further lists will be based on the 
-- 'HAVING' Condition

SELECT  MovieName, UserRating FROM GroupClause
WHERE ID<15
GROUP BY MovieName,UserRating
HAVING UserRating>90.00;