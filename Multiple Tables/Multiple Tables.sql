-- MULTIPLE TABLES INITIALIZATION AND SELECT

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='Countries')
BEGIN
	TRUNCATE TABLE Countries
	DROP TABLE Countries
END
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='States')
BEGIN
	TRUNCATE TABLE States
	DROP TABLE States
END
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='Districts')
BEGIN
	TRUNCATE TABLE Districts
	DROP TABLE Districts
END
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='Countries')
BEGIN
	CREATE TABLE Countries
	( 
		CountryId INT,
		StateId INT,
		DistrictId INT,
		CreatedDate DATETIME
);
	INSERT INTO Countries(CountryId,StateId,DistrictId,CreatedDate)
				   VALUES (1,5,3,DATEADD(dd,+1,GETDATE())),
					(2,2,1,DATEADD(dd,+2,GETDATE())),
					(3,6,4,DATEADD(dd,+3,GETDATE())),
					(4,10,7,DATEADD(dd,+4,GETDATE())),
					(5,8,9,DATEADD(dd,+5,GETDATE()));
END
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='States')
BEGIN
	CREATE TABLE States
	( 
		StateId INT,
		StateName VARCHAR(200),
		StatePopulation INT,
		StateCategory VARCHAR(100)
);
	INSERT INTO States(StateId, StateName,StatePopulation,StateCategory)
				   VALUES (1,'TamilNadu',330000,'Type 1'),
					(2,'Semiyos',430000,'Type 1'),
					(3,'Vajeus',780000,'Type 3'),
					(4,'Cathuj',870000,'Type 4'),
					(5,'Venicilla',540000,'Type 5'),
					(6,'Qioj',200000,'Type 6'),
					(7,'Vaitimno',139999,'Type 2'),
					(8,'Hurry',950000,'Type 3'),
					(9,'Osteller',680000,'Type 1'),
					(10,'myanmar',330000,'Type 6');
END
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='Districts')
BEGIN
	CREATE TABLE Districts
	( 
		DistrictId INT,
		DistrictName VARCHAR(200),
		NoOfVillages INT,
);
	INSERT INTO Districts(DistrictId, DistrictName,NoOfVillages)
				   VALUES (1,'Erode',130),
					(2,'Namakkal',340),
					(3,'Dharmapuri',450),
					(4,'Salem',227),
					(5,'Dhindukkal',876),
					(6,'Tiruppur',137),
					(7,'Madurai',334),
					(8,'Chennai',678),
					(9,'Coimbatore',390),
					(10,'Pollachi',222);
END
IF EXISTS(SELECT * FROM Countries)
BEGIN
SELECT * FROM Countries	
END
IF EXISTS(SELECT * FROM States)
BEGIN
SELECT * FROM States	
END
IF EXISTS(SELECT * FROM Districts)
BEGIN
SELECT * FROM Districts	
END