SELECT A.LAST_NAME "Employee", A.EMPLOYEE_ID "Emp#", B.LAST_NAME "Manager", B.MANAGER_ID "Mgr#"
FROM HR.EMPLOYEES A, HR.EMPLOYEES B
WHERE A.MANAGER_ID = B.EMPLOYEE_ID(+)
ORDER BY A.EMPLOYEE_ID;