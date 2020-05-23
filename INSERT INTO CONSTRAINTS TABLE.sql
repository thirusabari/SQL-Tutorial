INSERT INTO AWARDS(ID,Name,Reason,Created_By,Created_Date)
VALUES(1,'Thiru','walk','system',GETDATE());

INSERT INTO AWARDS(ID,Name,Reason,Created_By,Created_Date)
VALUES(2,'Arasu','walk','system',DATEADD(dd,+1,GETDATE()));

SELECT * FROM AWARDS
