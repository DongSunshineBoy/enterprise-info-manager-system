package priv.rulan.oa.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pages")
public class DepartmentHandler {

    @RequestMapping("/list")
    public String entryDepartment(){
        return "/department_list.jsp";
    }
}
