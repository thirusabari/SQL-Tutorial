-- 'WITH' CLAUSE
-- The 'WITH' Statement allows us to perform a separate Query (Such as Aggregations)
-- 'previous_results' is the alias that we will use to reference any columns from the query inside of the 'WITH' CLAUSE.
-- We can then go on to do whatever we want with this temporary table (such as join the temporary table with another table).
-- 'WITH' - Allows us to define one or more temporary tables that can be used in the final query

WITH 
previous_country AS (SELECT StateId, DistrictId FROM Countries),
previous_state AS (SELECT StateId,StateName FROM States),
previous_district AS (SELECT DistrictId,DistrictName FROM Districts)

SELECT pc.StateId,ps.StateName,pc.DistrictId,pd.DistrictName 
		FROM previous_country pc
		JOIN previous_state ps ON pc.StateId=ps.StateId
		JOIN previous_district pd ON pd.DistrictId=pc.DistrictId


