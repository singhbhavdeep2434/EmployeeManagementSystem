package com.bhavdeep.employeemanagementsystem.model;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Positive;
import lombok.AllArgsConstructor;
import lombok.Generated;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;


//@AllArgsConstructor
//@NoArgsConstructor
@Component
public class Employee {

    private int id;

    @NotEmpty(message="Name is required")
    private String name;

    @NotEmpty(message="Department is required")
    private String department;

    @NotEmpty(message="Email is required")
    @Email(message = "not correct format")
    private String email;

    @Positive(message="salary must be positive")
    private double salary;

    public Employee(int id, String name, String department, String email, double salary) {

        this.id = id;
        this.name = name;
        this.department = department;
        this.email = email;
        this.salary = salary;
    }

    public int getId() {
        return id;
    }

    public Employee() {
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }



}
