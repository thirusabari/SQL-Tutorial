IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME LIKE 'Btwn')
BEGIN
	DROP TABLE Btwn
END
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME LIKE 'Btwn')
BEGIN
	CREATE TABLE Btwn
	(
		UserName VARCHAR(100),
		City VARCHAR(100),
		PhoneNumber INT
	);
	IF NOT EXISTS(SELECT * FROM Btwn)
	BEGIN
		INSERT INTO Btwn(UserName, City, PhoneNumber)
			VALUES ('Sabari','Tiruchengode',98765),
				('Arasu','Erode',97),
				('Sakthiswaran','Anangoor',9621873),
				('Mathankumar','Thanneer Panadal Palayam',856554),
				('Logehswaran','Sankagri',9756),
				('Vigneshwaran','Near K.S.R College',90427285),
				('VinothKumar','Thanneer Pandal Palayam',5689),
				('Kiruthika','Modamangalam',NULL),
				('TamilSelvi','Pallipalayam',97855),
				('sabarinathan','Erode',88464),
				('Pragadeeesh','Maarthaandam',34343),
				('Bharat','Mayilaaduthurai',4566),
				('Bernice Jerome Nobert','Mathurai',5566),
				('Jeyseelan','Thanjavoor',566),
				('VasanthKumar','Tiruchy',66),
				('Surya','Thiruvarur',67),
				('Vignesh','Udumalaipettai',9),
				('Vignesh','Udumalaipettai',34);
	END
	IF EXISTS(SELECT * FROM Btwn)
		BEGIN
			SELECT * FROM Btwn WHERE UserName BETWEEN 'P' AND 'T'
		END
END
