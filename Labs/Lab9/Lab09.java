import java.sql.* ;
import java.util.*;

public class Lab09 {
	
	 public static void main(String args[]) {

		 try {  
 			Class.forName("oracle.jdbc.driver.OracleDriver") ;
   
 			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@orafarm.cse.csusb.edu:1522:orcl", "gsuarez", "sg8556");
   
			// Query 1
 			String query1 = "SELECT E.JOB_ID, D.DEPARTMENT_ID, D.LOCATION_ID FROM HR.EMPLOYEES E, HR.DEPARTMENTS D WHERE(D.DEPARTMENT_ID='80')" ; 
			
			// Query 2
			String query2 = "SELECT E.LAST_NAME, D.DEPARTMENT_NAME, D.LOCATION_ID, L.CITY FROM HR.EMPLOYEES E, HR.DEPARTMENTS D, HR.LOCATIONS L WHERE(D.LOCATION_ID = L.LOCATION_ID AND E.COMMISSION_PCT != 0)";

			// Query 3
			String query3 = "SELECT E.LAST_NAME, E.JOB_ID, E.DEPARTMENT_ID, D.DEPARTMENT_NAME FROM HR.EMPLOYEES E, HR.DEPARTMENTS D, HR.LOCATIONS L WHERE(E.DEPARTMENT_ID = D.DEPARTMENT_ID AND L.CITY = 'Toronto')"; 
			
			// Query 4
			String query4 = "SELECT E.LAST_NAME, E.EMPLOYEE_ID, M.LAST_NAME, M.MANAGER_ID FROM HR.EMPLOYEES E, HR.EMPLOYEES M WHERE E.MANAGER_ID = M.EMPLOYEE_ID";
			
			// Query 5
			String query5 = "SELECT E.LAST_NAME, E.HIRE_DATE, M.LAST_NAME, M.HIRE_DATE FROM HR.EMPLOYEES E, HR.EMPLOYEES M WHERE E.EMPLOYEE_ID = M.MANAGER_ID AND E.HIRE_DATE < M.HIRE_DATE";


 			PreparedStatement pstmt_employees = con.prepareStatement(query4);
   
 			ResultSet rs_employees = pstmt_employees.executeQuery();
 			    					
 			while (rs_employees.next()){

				// Query 1
				/*System.out.println("Job ID: " + rs_employees.getString(1));
				System.out.println("Department ID: " + rs_employees.getString(2));
				System.out.println("Location ID: " + rs_employees.getString(3) + '\n')*/

				// Query 2
				/*System.out.println("Department Name: " + rs_employees.getString(1));
				System.out.println("Location ID: " + rs_employees.getString(2));
				System.out.println("City: " + rs_employees.getString(3) + '\n');*/

				// Query 3
				/*System.out.println("Employee's Last Name: " + rs_employees.getString(1));
				System.out.println("Job: " + rs_employees.getString(2));
				System.out.println("Department ID: " + rs_employees.getString(3));
				System.out.println("Department Name: " + rs_employees.getString(4) + '\n');*/

				// Query 4
				System.out.println("Employee: " + rs_employees.getString(1));
				System.out.println("Emp#: " + rs_employees.getString(2));
				System.out.println("Manager: " + rs_employees.getString(3));
				System.out.println("Mgr#: " + rs_employees.getString(4) + '\n');

				// Query 5
				/*System.out.println("Employee: " + rs_employees.getString(1));
				System.out.println("Hire date: " + rs_employees.getString(2));
				System.out.println("Manager: " + rs_employees.getString(3));
				System.out.println("Hire date: " + rs_employees.getString(4) + '\n');*/
 				
 			} 
		 } catch(Exception e){ System.out.println(e);}	
 
	 }

}
