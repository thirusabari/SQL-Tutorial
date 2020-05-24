SELECT * 
FROM Query
WHERE ActorName like '%ji%' and Created_DATE> DATEADD(dd,+1,GETDATE());

-- WHERE Clause is used to obtain only the information we want.
-- Operators Used With Where Clause are =,!=,>,<,>=,<=