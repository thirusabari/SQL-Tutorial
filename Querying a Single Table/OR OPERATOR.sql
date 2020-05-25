--- 'OR' Operator can also be used to combine multiple conditions.
--- 'OR' Operator displays a row if any condition is true

SELECT * FROM CODE_ACADEMY
WHERE ACADEMY LIKE '%i%' AND CODE LIKE '%od%'
OR CREATED_BY LIKE '%su%'
