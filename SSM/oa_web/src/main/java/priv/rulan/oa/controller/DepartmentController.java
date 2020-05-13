package priv.rulan.oa.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import priv.rulan.biz.DepartmentBiz;
import priv.rulan.oa.entity.Department;
import priv.rulan.oa.global.Content;

import java.util.*;

/**
 * 部门管理控制器类
 */

@Controller("departmentWeb")

@RequestMapping("/department")
public class DepartmentController {

    //调用业务层
    @Autowired
    private DepartmentBiz departmentBiz;

    @RequestMapping("/list")
    public String list(Map<String,Object> map ) {


        map.put("list", departmentBiz.getAllDepartment());

        return "department_list";
    }

    @RequestMapping("/to_add")
    public String to_add(Map<String,Object> map){
        map.put("dlist", Content.getCost());
        map.put("department",new Department());
        return "department_add";
    }

    @RequestMapping("/add")
    public String add(Department department){
        departmentBiz.add(department);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_update",params = "sn")
    public String toUpdate(String sn,Map<String,Object> map){
        map.put("department",departmentBiz.get(sn));
        return "department_update";
    }

    @RequestMapping("/update")
    public String update(Department department){
        departmentBiz.edit(department);
        return "redirect:list";
    }

    @RequestMapping(value = "/remove",params = "sn")
    public String remove(String sn){
        departmentBiz.remove(sn);
        return "redirect:list";
    }
}
