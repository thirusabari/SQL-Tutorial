-- 'JOIN'
-- It is used to combining multiple tables with their unique Columns. Maximum we will combine the tables using the Primary Keys in the Table.

SELECT  Countries.StateId,States.StateId,States.StateName FROM Countries
JOIN States ON States.StateId=Countries.StateId



SELECT  Countries.StateId,States.StateId,States.StateName FROM Countries
JOIN States ON States.StateId=Countries.StateId
WHERE StateName LIKE '%i%'