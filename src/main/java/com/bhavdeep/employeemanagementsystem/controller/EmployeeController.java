package com.bhavdeep.employeemanagementsystem.controller;

import com.bhavdeep.employeemanagementsystem.model.Employee;
import com.bhavdeep.employeemanagementsystem.repo.EmployeeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeRepo repo;


    @RequestMapping(value = "/deleteEmployee", method = RequestMethod.POST)
    public String deleteEmployee(@RequestParam("id") int id) {
        System.out.println("Deleting employee with ID: " + id);
        Employee employee = repo.getEmployeeById(id);

        if (employee != null) {
            repo.removeEmployeeById(id);
            return "redirect:/showEmployees";
        } else {
            return "employeeNotFound";
        }
    }


    @GetMapping("/showEmployees")
    public String showEmployees(Model model) {
        List<Employee> emp= repo.getAllEmployees();
        model.addAttribute("employees", emp);
        return "viewAllEmployees";
    }

    @RequestMapping({"/","/home"})
    public String home() {

        return "home";
    }

    @GetMapping("/searchEmployee")
    public String searchEmployee(@RequestParam("id") int id, Model model) {
        Employee emp = repo.getEmployeeById(id);
        model.addAttribute("employee", emp);
        return "employeeDetails";
    }


    @GetMapping("/addEmployee")
    public String addEmployee(Model model) {
        System.out.println("addEmployee called");
        model.addAttribute("Employee", new Employee());
        return "addEmployees";
    }

    @GetMapping("/updateEmployee")
    public String updateEmployee(@RequestParam("id") int id, Model model) {
        System.out.println("addEmployee called");
        Employee employ = repo.getEmployeeById(id);
        model.addAttribute("Employee", employ);
        return "updateEmployee";
    }

    @PostMapping("/saveUpdatedEmployee")
    public String saveUpdatedEmployee(@ModelAttribute("Employee") Employee employee, Model model) {
        System.out.println("saveUpdatedEmployee called for ID: " + employee.getId());
        repo.updateEmployee(employee);
        model.addAttribute("Employee", employee);
        return "redirect:/showEmployees";
    }



    @PostMapping("/handlerAddEmployee")
    public String handlerAddEmployee( Employee employee,Model model) {
        System.out.println("Start handler");
        model.addAttribute("employee", employee);
        repo.addEmployee(employee);
        System.out.println("End handler");
        return "success";
    }
}
