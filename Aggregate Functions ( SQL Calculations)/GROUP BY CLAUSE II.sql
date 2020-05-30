-- SQL lets us use column reference(s) in our 'GROUP BY' that will make our lives easier.
-- '1' is the first column selected
-- '2' is the second column selected
-- '3' is the third column selected
-- For Example

--SELECT COUNT(ID) AS COUNTOFID, SUM(UserRating) AS SumOfUserRating
--	FROM GroupClause
--	GROUP BY 1
--	ORDER BY 1;

SELECT COUNT(ID) AS COUNTOFID, SUM(UserRating) AS SumOfUserRating
	FROM GroupClause
	GROUP BY ID
	ORDER BY ID;

SELECT MovieName,UserRating,AVG(UserRating) AS AvgUserRating 
	FROM GroupClause
	GROUP BY MovieName,UserRating;

