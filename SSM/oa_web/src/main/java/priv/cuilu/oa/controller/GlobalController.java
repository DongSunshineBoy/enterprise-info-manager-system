package priv.cuilu.oa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import priv.cuilu.biz.GlobalBiz;
import priv.cuilu.oa.entity.Employee;

import javax.servlet.http.HttpSession;

@Controller("globalController")
public class GlobalController {

    @Autowired
    private GlobalBiz globalBiz;

    @RequestMapping("/to_login")
    public String toLogin(){
        return "login";
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
}
