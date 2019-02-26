SELECT A.LAST_NAME, A.JOB_ID, A.DEPARTMENT_ID, B.DEPARTMENT_NAME
FROM HR.EMPLOYEES A, HR.DEPARTMENTS B, HR.LOCATIONS C
WHERE A.DEPARTMENT_ID = B.DEPARTMENT_ID AND C.CITY = 'Toronto'; 
