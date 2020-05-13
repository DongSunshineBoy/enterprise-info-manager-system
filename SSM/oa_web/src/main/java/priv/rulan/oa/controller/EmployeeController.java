package priv.rulan.oa.controller;

import org.springframework.stereotype.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import priv.rulan.biz.DepartmentBiz;
import priv.rulan.biz.EmployeeBiz;
import priv.rulan.oa.entity.Employee;
import priv.rulan.oa.global.Content;

import java.util.*;

/**
 * 员工管理控制器类
 */

@Controller("employeeWeb")

@RequestMapping("/employee")
public class EmployeeController {

    //调用业务层
    @Autowired
    private EmployeeBiz employeeBiz;

    @Autowired
    private DepartmentBiz departmentBiz;


    @RequestMapping("/list")
    public String list(Map<String,Object> map ) {
        System.out.println(employeeBiz.getAllEmployee());
        map.put("list", employeeBiz.getAllEmployee());

        return "employee_list";
    }

    @RequestMapping("/to_add")
    public String to_add(Map<String,Object> map){
        map.put("employee",new Employee());
        map.put("dlist",departmentBiz.getAllDepartment());
        map.put("plist", Content.getPost());
        return "employee_add";
    }


    @RequestMapping("/add")
    public String add(Employee employee){
        System.out.println(employee);
        employeeBiz.add(employee);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_update",params = "sn")
    public String toUpdate(String sn,Map<String,Object> map){
        map.put("employee",employeeBiz.get(sn));
        map.put("dlist",departmentBiz.getAllDepartment());
        map.put("plist", Content.getPost());
        return "employee_update";
    }

    @RequestMapping("/update")
    public String update(Employee employee){
        employeeBiz.edit(employee);
        return "redirect:list";
    }

    @RequestMapping(value = "/remove",params = "sn")
    public String remove(String sn){
        employeeBiz.remove(sn);
        return "redirect:list";
    }
}
