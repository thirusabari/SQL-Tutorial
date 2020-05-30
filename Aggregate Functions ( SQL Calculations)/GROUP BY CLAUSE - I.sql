-- 'GROUP BY' Clause
-- It is Clause in SQL that is used with aggregate functions. It is used in collaboration with the SELECT statement to arrange
-- identical data into groups.
-- This 'GROUP BY' Statement comes after any 'WHERE' Statement, but before 'ORDER BY' OR 'LIMIT'

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='GroupClause')
BEGIN
	TRUNCATE TABLE GroupClause
	DROP TABLE GroupClause
END
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='GroupClause')
BEGIN
	CREATE TABLE GroupClause
	( 
		ID INT,
		MovieName VARCHAR(200),
		ReleaseYear VARCHAR(200),
		UserRating FLOAT,
);
	INSERT INTO GroupClause(ID, MovieName,ReleaseYear,UserRating)
				   VALUES (1,'Iron Man','2009',86.2),
					(2,'Win Man','2018',86.1),
					(3,'Heartin Man','2008',25.2),
					(4,'Lucky Man','2009',34.45),
					(5,'Warner Man','2008',25.23),
					(6,'Evil Man','2010',67.1),
					(7,'Spider Man','2010',78.98),
					(8,'Lone Ranger','2015',67.11),
					(9,'Green Lanrern','2011',87.22),
					(10,'Wonder Woman','2012',34.45),
					(11,'X Men','2012',99.12),
					(12,'Fast and Furious','2012',100),
					(13,'Failure Man','2013',86.1),
					(14,'Successful Man','2013',55.35),
					(15,'Pain Man','2014',12.12),
					(16,'Cry Man','2018',24.24),
					(17,'Vanish Man','2015',36.35),
					(18,'Torque Man','2010',06.87),
					(19,'Stupid Man','2018',55.98),
					(20,'Gaint Man','2008',56.76),
					(21,'Faithful Man','2014',57.90);
END

IF EXISTS(SELECT * FROM GroupClause)
BEGIN
	SELECT ROUND(AVG(UserRating),2) AS AvgRating, ReleaseYear FROM GroupClause
	GROUP BY ReleaseYear

	-- Below Codes wont working for now. Have asked question in the code cademy
	--https://discuss.codecademy.com/t/when-using-group-by-do-we-always-have-to-group-by-a-selected-column/351547/7?u=g.thirunavukkarasu
	--SELECT SUM(ID), MovieName,ReleaseYear FROM GroupClause
	--GROUP BY UserRating

	--SELECT MovieName,ReleaseYear FROM GroupClause
	--GROUP BY UserRating
	--https://discuss.codecademy.com/t/when-using-group-by-do-we-always-have-to-group-by-a-selected-column/351547/7?u=g.thirunavukkarasu
	
END