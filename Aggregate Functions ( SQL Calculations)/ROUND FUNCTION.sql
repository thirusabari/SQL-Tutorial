--'ROUND()' Function
-- It takes two arguments inside the parenthesis:
-- Column Name, Integer
--- It Rounds the values in the column to the number of decimal places specified by the integer.

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='Rounding')
BEGIN
	TRUNCATE TABLE Rounding
	DROP TABLE Rounding
END
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='Rounding')
BEGIN
	CREATE TABLE Rounding
	( 
		ID Float,
		Val FLOAT
	);
	INSERT INTO Rounding(ID, Val)
				   VALUES (1, 1.12),
					(2, 2.24),
					(3, 3.33),
					(4, 4.45),
					(5, 5.67),
					(1, 1.12),
					(2, 2.24),
					(3, 3.33),
					(4, 4.45),
					(5, 5.67);
END

IF EXISTS(SELECT * FROM Rounding)
BEGIN
	SELECT TOP 1 ROUND(Val,0) AS RoundedId FROM Rounding WHERE ID=1
	SELECT TOP 1 ROUND(Val,1) AS RoundedId FROM Rounding WHERE ID=2
	SELECT TOP 1 ROUND(Val,2) AS RoundedId FROM Rounding WHERE ID=3
	SELECT TOP 1 ROUND(Val,3) AS RoundedId FROM Rounding WHERE ID=4
	
END