package com.bhavdeep.employeemanagementsystem.repo;

import com.bhavdeep.employeemanagementsystem.model.Employee;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class EmployeeRepo {
    List<Employee> employees = new ArrayList<>();
    int currentId = 4;

    public EmployeeRepo() {
        employees.add(new Employee(1, "Bhavdeep", "IT", "bhavdeep@humber.ca", 100.0));
        employees.add(new Employee(2, "Sourav", "IT", "sourav@humber.ca", 100.0));
        employees.add(new Employee(3, "Tisha", "IT", "tisha@humber.ca", 100.0));
    }

    public List<Employee> getAllEmployees() {
        return employees;
    }

    public void addEmployee(Employee employee) {

        employee.setId(currentId++);
        employees.add(employee);
    }

    public Employee getEmployeeById(int id) {
        for (Employee emp : employees) {
            if (emp.getId() == id) {
                return emp;
            }
        }
        return null;
    }

    public void updateEmployee(Employee employee) {
        for (int i = 0; i < employees.size(); i++) {
            if (employees.get(i).getId() == employee.getId()) {
                employees.set(i, employee);  // Replace the old employee with the updated one
                return;
            }
        }
        throw new RuntimeException("Employee with ID " + employee.getId() + " not found");
    }


    public void removeEmployeeById(int id) {
        employees.removeIf(emp -> emp.getId() == id);

    }
}
