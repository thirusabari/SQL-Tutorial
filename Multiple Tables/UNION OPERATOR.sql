-- 'UNION' - OPERATOR
-- Tables must have the same number of Columns
-- The Columns must have the same data types in the same order as the first table.
-- 'UNION' - It will Exclude All Duplicate Rows

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='States1')
BEGIN
	TRUNCATE TABLE States1
	DROP TABLE States1
END
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='States2')
BEGIN
	TRUNCATE TABLE States2
	DROP TABLE States2
END
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='States1')
BEGIN
	CREATE TABLE States1
	( 
		StateId INT,
		StateName VARCHAR(200),
		StatePopulation INT,
		StateCategory VARCHAR(100)
);
	INSERT INTO States1(StateId, StateName,StatePopulation,StateCategory)
				   VALUES (1,'TamilNadu',330000,'Type 1'),
					(2,'Semiyos',430000,'Type 1'),
					(3,'Vajeus',780000,'Type 3'),
					(4,'Cathuj',870000,'Type 4'),
					(5,'Venicilla',540000,'Type 5'),
					(6,'Qioj',200000,'Type 6'),
					(7,'Vaitimno',139999,'Type 2'),
					(8,'Hurry',950000,'Type 3'),
					(9,'Osteller',680000,'Type 1'),
					(5,'Venicilla',540000,'Type 5'),
					(6,'Qioj',200000,'Type 6'),
					(7,'Vaitimno',139999,'Type 2'),
					(8,'Hurry',950000,'Type 3'),
					(9,'Osteller',680000,'Type 1'),
					(10,'myanmar',330000,'Type 6');
END
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='States2')
BEGIN
	CREATE TABLE States2
	( 
		StateId INT,
		StateName VARCHAR(200),
		StatePopulation INT,
		StateCategory VARCHAR(100)
);
	INSERT INTO States2(StateId, StateName,StatePopulation,StateCategory)
				   VALUES (1,'TamilNadu',330000,'Type 1'),
					(2,'Semiyos',430000,'Type 1'),
					(3,'Vajeus',780000,'Type 3'),
					(4,'Cathuj',870000,'Type 4'),
					(5,'Venicilla',540000,'Type 5'),
					(6,'Qioj',200000,'Type 6'),
					(7,'Vaitimno',139999,'Type 2'),
					(8,'Hurry',950000,'Type 3'),
					(9,'Osteller',680000,'Type 1'),
					(5,'Venicilla',540000,'Type 5'),
					(6,'Qioj',200000,'Type 6'),
					(7,'Vaitimno',139999,'Type 2'),
					(8,'Hurry',950000,'Type 3'),
					(9,'Osteller',680000,'Type 1'),
					(10,'myanmar',330000,'Type 6');
END
IF EXISTS(SELECT * FROM States1)
BEGIN
	IF EXISTS(SELECT * FROM States2)
	BEGIN
		SELECT * FROM States1
		UNION
		SELECT * FROM States2
	END
END

-- 'UNION ALL' - It will Include All Duplicate Rows Also.
IF EXISTS(SELECT * FROM States1)
BEGIN
	IF EXISTS(SELECT * FROM States2)
	BEGIN
		SELECT * FROM States1
		UNION ALL
		SELECT * FROM States2
	END
END
