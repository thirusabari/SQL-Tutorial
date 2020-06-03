IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='AddDropCons')
BEGIN
	TRUNCATE TABLE AddDropCons
	DROP TABLE AddDropCons
END
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='AddDropCons')
BEGIN
	CREATE TABLE AddDropCons
	( 
		Id INT NOT NULL,
		ItemName VARCHAR(100),
		Cost INT
		
);
	INSERT INTO AddDropCons(Id,ItemName,Cost)
				   VALUES (1,'Ball',44),
					(2,'Bat',120),
					(3,'Bag',250),
					(4,'SmartPhone',9999),
					(5,'BarPen',45),
					(6,'Notebook',60);
END
IF EXISTS(SELECT * FROM AddDropCons)
BEGIN
	ALTER TABLE AddDropCons
	ADD CONSTRAINT Chck_Cost CHECK (Cost>40)
END
IF NOT EXISTS(SELECT * FROM AddDropCons WHERE Cost<40)

BEGIN
BEGIN TRY
PRINT 'BEGIN  INSERT'
	INSERT INTO AddDropCons(Id,ItemName,Cost)
				   VALUES (7,'Cable',30);
PRINT 'END  INSERT'
END TRY
BEGIN CATCH
PRINT 'BEGIN  CATCH'
	ALTER TABLE AddDropCons
	DROP CONSTRAINT Chck_Cost;
PRINT 'END  CATCH'
END CATCH
END

