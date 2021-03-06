SELECT A.FIRST_NAME, A.LAST_NAME, A.JOB_ID, B.DEPARTMENT_NAME, A.SALARY, C.GRADE_LEVEL
FROM HR.EMPLOYEES A JOIN HR.DEPARTMENTS B
ON(A.DEPARTMENT_ID = B.DEPARTMENT_ID)
JOIN HR.JOB_GRADES C
ON(A.SALARY BETWEEN C.LOWEST_SAL AND C.HIGHEST_SAL);
