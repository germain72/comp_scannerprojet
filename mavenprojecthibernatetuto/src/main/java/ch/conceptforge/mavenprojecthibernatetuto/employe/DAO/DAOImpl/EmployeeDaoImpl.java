/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ch.conceptforge.mavenprojecthibernatetuto.employe.DAO.DAOImpl;

import java.util.ArrayList;
import java.util.List;
import ch.conceptforge.mavenprojecthibernatetuto.employe.DAO.EmployeeDao;
import ch.conceptforge.mavenprojecthibernatetuto.employe.DAO.DAOImpl.pojo.Employeedetails;
import ch.conceptforge.mavenprojecthibernatetuto.*;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.Query;

/**
 *
 * @author Vikram
 */
public class EmployeeDaoImpl implements EmployeeDao {

    @Override
    public void saveEmployee(Employeedetails employee) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(employee);
        transaction.commit();
        session.close();
    }

    @Override
    public List<Employeedetails> showAllEmployees() {
        List<Employeedetails> employeeList = new ArrayList<Employeedetails>();
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery("from Employeedetails");
        System.out.println("nb :"+query.list().size());
        employeeList = query.list();
        return employeeList;
    }

    @Override
    public void updateEmployee(int id, String ename, String enumber) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Employeedetails empdetails = (Employeedetails)session.load(Employeedetails.class, id);
        empdetails.setEname(ename);
        empdetails.setEnumber(enumber);
        session.update(empdetails);
        transaction.commit();
        session.close();  
    }

    @Override
    public void deleteEmployee(Employeedetails employee) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(employee);
        transaction.commit();
        session.close();
    }
    
}
