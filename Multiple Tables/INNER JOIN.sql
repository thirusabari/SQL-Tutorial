-- 'INNER JOIN' Statement
-- This Statement Results only includes rows that match our 'ON' Condition.
-- There is no Difference between 'INNER JOIN' and 'JOIN'. They are Functionality Equivalent.

SELECT * from Countries
INNER JOIN States ON Countries.StateId=States.StateId



SELECT * from Countries
 JOIN States ON Countries.StateId=States.StateId

