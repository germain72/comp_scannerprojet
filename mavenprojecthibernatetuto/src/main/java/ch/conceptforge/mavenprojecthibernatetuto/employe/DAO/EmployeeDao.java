/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ch.conceptforge.mavenprojecthibernatetuto.employe.DAO;

import java.util.List;
import ch.conceptforge.mavenprojecthibernatetuto.employe.DAO.DAOImpl.pojo.Employeedetails;



/**
 *
 * @author Vikram
 */
public interface EmployeeDao {
    
    public void saveEmployee (Employeedetails employee);
    public List<Employeedetails> showAllEmployees();
    public void updateEmployee (int id, String ename, String enumber);
    public void deleteEmployee (Employeedetails employee);
    
    
}
