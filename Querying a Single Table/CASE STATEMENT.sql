-- 'CASE' Statement allows us to create different outputs
-- 'WHEN' tests a condition and the following 'THEN' gives the specified data type if the condition is true.
-- 'ELSE' gives us the speicified content if all previous conditions are all false.
-- 'CASE' Statement must end with 'END'
 
 

 SELECT CASE 
 WHEN ACADEMY LIKE '%de%' THEN 'Deleted'
 WHEN ACADEMY LIKE '%re%' THEN 'Rejected'
 ELSE 'Others'
 END AS Conditions
 FROM CODE_ACADEMY;