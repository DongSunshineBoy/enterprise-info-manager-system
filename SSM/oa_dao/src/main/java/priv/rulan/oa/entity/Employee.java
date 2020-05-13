package priv.rulan.oa.entity;

import java.util.Objects;

/**
 * 员工实体类
 */
public class Employee {


    //员工编号（账号）
    private String emp_id;

    private String emp_phone;

    //关联部门
    private Department department;

    //员工密码
    private String emp_pwd;

    //员工姓名
    private String emp_name;

    //部门编号
    private String dep_id;

    //员工职位
    private String emp_position;

    public String getEmp_phone() {
        return emp_phone;
    }

    public void setEmp_phone(String emp_phone) {
        this.emp_phone = emp_phone;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Employee employee = (Employee) o;
        return Objects.equals(emp_id, employee.emp_id) &&
                Objects.equals(emp_phone, employee.emp_phone) &&
                Objects.equals(department, employee.department) &&
                Objects.equals(emp_pwd, employee.emp_pwd) &&
                Objects.equals(emp_name, employee.emp_name) &&
                Objects.equals(dep_id, employee.dep_id) &&
                Objects.equals(emp_position, employee.emp_position);
    }

    @Override
    public int hashCode() {
        return Objects.hash(emp_id, emp_pwd, emp_name, dep_id, emp_position);
    }

    @Override
    public String toString() {
        return "Employee{" +
                "emp_id='" + emp_id + '\'' +
                ", emp_phone='" + emp_phone + '\'' +
                ", department=" + department +
                ", emp_pwd='" + emp_pwd + '\'' +
                ", emp_name='" + emp_name + '\'' +
                ", dep_id='" + dep_id + '\'' +
                ", emp_position='" + emp_position + '\'' +
                '}';
    }

    public String getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(String emp_id) {
        this.emp_id = emp_id;
    }

    public String getEmp_pwd() {
        return emp_pwd;
    }

    public void setEmp_pwd(String emp_pwd) {
        this.emp_pwd = emp_pwd;
    }

    public String getEmp_name() {
        return emp_name;
    }

    public void setEmp_name(String emp_name) {
        this.emp_name = emp_name;
    }

    public String getDep_id() {
        return dep_id;
    }

    public void setDep_id(String dep_id) {
        this.dep_id = dep_id;
    }

    public String getEmp_position() {
        return emp_position;
    }

    public void setEmp_position(String emp_position) {
        this.emp_position = emp_position;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }
}
