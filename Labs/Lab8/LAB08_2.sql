SELECT JOB_ID "Job ID", MAX(SALARY) "Maximum", MIN(SALARY) "Minimum", SUM(SALARY) "Sum", ROUND(AVG(SALARY), 0) "Average"
FROM HR.EMPLOYEES
GROUP BY JOB_ID;