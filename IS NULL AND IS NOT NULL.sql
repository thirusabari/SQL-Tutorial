IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME LIKE 'IsNull_IsNotNull')
BEGIN
	DROP TABLE IsNull_IsNotNull
END
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME LIKE 'IsNull_IsNotNull')
BEGIN
	CREATE TABLE IsNull_IsNotNull
	(
		id INT,
		Name TEXT,
		Created_By TEXT,
		Created_Date DATETIME
	);
	IF NOT EXISTS(SELECT * FROM IsNull_IsNotNull)
	BEGIN
	INSERT INTO IsNull_IsNotNull(id, Name, Created_By,Created_Date)
	VALUES (1,'Sabari','Sabarinathan',GETDATE()),
	(2,'Arasu','Arasu',DATEADD(dd,+1,GETDATE())),
	(3,NULL,NULL,DATEADD(dd,+2,GETDATE())),
	(4,'Jain',NULL,DATEADD(dd,+3,GETDATE())),
	(5,'Vignesh',NULL,DATEADD(dd,+4,GETDATE())),
	(6,'Jaikumar',NULL,DATEADD(dd,+5,GETDATE())),
	(7,'Kumar',NULL,DATEADD(dd,+6,GETDATE())),
	(8,NULL,NULL,DATEADD(dd,+7,GETDATE()));
	END
	IF EXISTS(SELECT * FROM IsNull_IsNotNull)
		BEGIN
			SELECT * FROM IsNull_IsNotNull WHERE Name IS NULL OR Created_By IS NOT NULL
		END
END
