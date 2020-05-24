INSERT INTO Query(ActorName, MovieName, Created_By,Created_Date)
VALUES ('Vishaal','Sandakolizhi','Vishu',GETDATE()),
('Rajini','Santhramugi','Rajini',DATEADD(dd,+1,GETDATE())),
('Ajith','Veeram','Ahith',DATEADD(dd,+2,GETDATE())),
('Vijay','Bathri','Vijay',DATEADD(dd,+3,GETDATE())),
('Surya','7 th sense','Surya',DATEADD(dd,+4,GETDATE())),
('Karthik','anegan','karthi',DATEADD(dd,+5,GETDATE()));

SELECT * FROM Query