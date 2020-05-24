IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME LIKE 'Special_Chars')
	BEGIN
		CREATE TABLE Special_Chars
		(
			id INT NOT NULL,
			Name TEXT NULL,
			Amount INT DEFAULT 0,
			Perct TEXT DEFAULT '0%'
		);
	END
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME LIKE 'Special_Chars')
BEGIN
	IF NOT EXISTS(SELECT * FROM Special_Chars)
	BEGIN
	INSERT INTO Special_Chars(id, Name, Amount,Perct)
				VALUES (1,'The Avengers', 100,'1000%'),
				(2,'The Dark Knight Rises', 50,'10.0%'),
				(3,'The Mission Impossible', 70,'1%-2%'),
				(4,'The King Cobra', 60,'57%-78%'),
				(5,'Expendables', 90,'58%-78%'),
				(6,'Doctor Strange', 100,'59%-78%'),
				(7,'I Robot', 120,'88%-98%');
				END
	END
GO
IF EXISTS(SELECT * FROM Special_Chars)
	BEGIN
		SELECT * FROM Special_Chars
		WHERE Name LIKE 'The %' AND Perct LIKE '%-%'
END

--TRUNCATE TABLE Special_Chars

-- When Searching for a pattern containing the specific characters '%' or '_', we can utilize the escape character \,
-- similarly to its use in Python

