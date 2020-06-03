IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='CustomersInfo')
BEGIN
	TRUNCATE TABLE CustomersInfo
	DROP TABLE CustomersInfo
END
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='CustomersInfo')
BEGIN
	CREATE TABLE CustomersInfo
	( 
		Id INT NOT NULL,
		CustomerName VARCHAR(100),
		Age INT,
		City VARCHAR(100),
		CHECK (Age>=25)
);
	INSERT INTO CustomersInfo(Id,CustomerName,Age,City)
				   VALUES (1,'Luna',27,'Denmark'),
					(2,'John',35,'Chicago'),
					(3,'Mark',56,'Livingston'),
					(4,'George',66,'Picas'),
					(5,'Fench',30,'Ratcher'),
					(6,'PHV',46,'Paris');
END
IF EXISTS(SELECT * FROM CustomersInfo)
BEGIN
--SELECT * FROM CustomersInfo	

-- Below Code will throws Error Due to Check Constraint 
INSERT INTO CustomersInfo(Id,CustomerName,Age,City)
				   VALUES (7,'Luna',20,'Denmark');
--------------------------------------------
END

