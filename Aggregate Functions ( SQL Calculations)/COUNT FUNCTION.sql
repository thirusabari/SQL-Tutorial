-- COUNT() FUNCTION
-- Fastest Way to Calculate How Many rows in a table.
--- It takes the name of the column as argument and counts the number of non empty values in that column.
--- '*' - It Considers Every Row For the Count
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='Aggregates')
BEGIN
	TRUNCATE TABLE Aggregates
	DROP TABLE Aggregates
END
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='Aggregates')
BEGIN
	CREATE TABLE Aggregates
	( 
		ID INT,
		FunctionName VARCHAR(100),
		Uses VARCHAR(300)
	);
	INSERT INTO Aggregates(ID, FunctionName,Uses)
				   VALUES (1, 'COUNT','Count the Number of Rows'),
					(2, 'SUM','The Sum of the values in a column'),
					(3, 'MAX/MIN','The Largest/Smallest Value'),
					(4, 'AVG','The Average of the Values in a Column'),
					(5, 'ROUND','Round the Values in the Column'),
					(1, 'COUNT','Count the Number of Rows'),
					(2, 'SUM','The Sum of the values in a column'),
					(3, 'MAX/MIN','The Largest/Smallest Value'),
					(4, 'AVG','The Average of the Values in a Column'),
					(5, 'ROUND','Round the Values in the Column');
END

IF EXISTS(SELECT * FROM Aggregates)
BEGIN
	SELECT COUNT(*) AS AllRows_Count FROM Aggregates 
	SELECT COUNT(*) AS SpecificRows_Count FROM Aggregates WHERE LEN(FunctionName)>3
	SELECT COUNT(DISTINCT FunctionName) AS DistinctRows_Count FROM Aggregates
END