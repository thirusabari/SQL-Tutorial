--'LIMIT' - It Specified the maximum number of rows the result set will have.
-- 'LIMIT' - It always goes at the very end of the query.
-- It is not supported in all SQL databases.

-- BELOW CODE WON'T WORK
SELECT * FROM CODE_ACADEMY
ORDER BY CREATED_BY DESC
LIMIT 5;