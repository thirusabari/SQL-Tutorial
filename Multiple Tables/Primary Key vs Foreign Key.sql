--'Primary Keys'
-- None of the values can be NULL.
-- Each value must be a unique.
-- A table cannot have more than one primary Key Column.

--To do Join, the matching column is usually a primary key of a table and foreign key of another!

SELECT * FROM Countries
JOIN States S ON S.StateId=Countries.StateId