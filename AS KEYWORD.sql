SELECT ActorName AS Actor,
	   MovieName AS Movie,
	   Created_By AS [User],
	   Created_DATE AS ReceivedDate
FROM Query;

-- WHEN USING 'AS' - COLUMNS SHOULD NOT BE RENAMED IN THE EXISTING TABLES. THIS ALIASES ONLY APPEAR IN THE RESULT
-- Quotes are Required when Alliases Contains Spaces, panctuation marks, special characters or reserved keywords.

SELECT ActorName AS 'Cast_Name',
	   MovieName AS 'Film_Name',
	   Created_By AS 'User_Name',
	   Created_DATE AS 'Created_Date'
FROM Query;