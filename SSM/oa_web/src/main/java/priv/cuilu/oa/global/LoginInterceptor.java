package priv.cuilu.oa.global;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import priv.cuilu.oa.entity.Employee;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {

        String url = httpServletRequest.getRequestURI();

        if(url.toLowerCase().indexOf("login")>=0) {
            return true;
        }

        Employee employee = (Employee)httpServletRequest.getSession().getAttribute("employee");

        if( employee != null) {
            System.out.println("当前用不为空---------------------------------------------");
            return true;
        }
        System.out.println("当前用为空---------------------------------------------");
        httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/to_login");
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
