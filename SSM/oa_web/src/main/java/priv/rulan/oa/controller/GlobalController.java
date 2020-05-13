package priv.rulan.oa.controller;


import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import priv.rulan.biz.DepartmentBiz;
import priv.rulan.biz.EmployeeBiz;
import priv.rulan.biz.GlobalBiz;
import priv.rulan.oa.entity.Department;
import priv.rulan.oa.entity.Employee;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

@Controller("globalController")

public class GlobalController {

    @Autowired
    private GlobalBiz globalBiz;

    @Autowired
    private DepartmentBiz departmentBiz;

    @Autowired
    private EmployeeBiz employeeBiz;

    @RequestMapping("/to_login")
    public String toLogin(){
        return "login";
    }


    @RequestMapping(value =   "/to_upDownLoad",method = RequestMethod.GET)
    public String toDownLoad(){
        return "uploadown";
    }

    @RequestMapping(value = "/login")
    public String login(@RequestParam String username, HttpSession session, @RequestParam String password){
        Employee employee = globalBiz.login(username,password);
        System.out.println(employee);
        if(employee == null) {
            session.setAttribute("error","账号或者密码输入错误");
            return "redirect:to_login";
        }
        session.setAttribute("employee",employee);
        return "redirect:self";
    }

    @RequestMapping(value = "/upLoadDown",method = RequestMethod.POST)
    public String to_upload(@RequestParam("file")MultipartFile file) {
        if(!file.isEmpty()){
            try{
                //将文件拷贝至服务器目录下
                FileUtils.copyInputStreamToFile(file.getInputStream(),new File("D:\\file",System.currentTimeMillis()
                        + file.getOriginalFilename()));
            }catch (IOException e){
                e.printStackTrace();
            }
        }
        return "uploadownSuccess";
    }


    @RequestMapping("/self")
    public String self(){
        return "self";
    }


    @RequestMapping("/quit")
    public String quit(HttpSession httpSession){
        httpSession.removeAttribute("employee");
        return "redirect:to_login";
    }

    @RequestMapping("/to_change_password")
    public String to_changePassword(){
        return "change_password";
    }

    @RequestMapping(value = "/change_password")
    public String changePassword(HttpSession session,@RequestParam String old,@RequestParam String new1,@RequestParam String new2){
       Employee employee = (Employee) session.getAttribute("employee");
       //如果原始密码相等
       if(employee.getEmp_pwd().equals(old)) {
           //两次输入一至
           if(new1.equals(new2)){
               //修改session用户密码
               employee.setEmp_pwd(new1);
               //调用业务层将密码更新至持久层
               globalBiz.changePassword(employee);
               return "redirect:self";
           }
           session.setAttribute("errorByInput","两次输入不一致!");
           return "redirect:to_change_password";
       }
       session.setAttribute("errorByInput","原始密码有误!");
       return "redirect:to_change_password";
    }

    @RequestMapping("/to_register")
    public String to_register(Map<String,Object> map,HttpSession session,String flag){
      Employee  employee = new Employee();
      if(!"".equals(flag)){
          map.put("message",Boolean.parseBoolean(flag));
      }
      map.put("employee",employee);
      map.put("department",departmentBiz.getAllDepartment());
        return "page-register";
    }

    @RequestMapping("/register")
    public String register(Employee employee, Map<String, Object> map){
        System.out.println(employee);
        employeeBiz.add(employee);
        return "redirect:to_register?flag=true";
    }

    @RequestMapping("/check_existUser")
    public void check_existUser(String emp_id, HttpServletResponse rep)throws Exception{
        String jsonResult = "";
        if(!emp_id.equals("")){
            Employee employee = employeeBiz.get(emp_id);
            if(employee!=null){
                jsonResult = "{\"valid\":false}";
            }else{
                jsonResult = "{\"valid\":true}";
            }
        }else{
            jsonResult = "{\"valid\":false}";
        }
       rep.getWriter().write(jsonResult);
    }
}
