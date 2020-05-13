package priv.rulan.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import priv.rulan.biz.GlobalBiz;
import priv.rulan.oa.dao.EmployeeDao;
import priv.rulan.oa.entity.Employee;

@Service("globalBiz")
public class GlobalBizImpl implements GlobalBiz {


    @Qualifier("employeeDao")
    @Autowired
    private EmployeeDao employeeDao;


    @Override
    public Employee login(String emp_id, String password) {
        //登陆用户逻辑校验
        Employee employee = employeeDao.select(emp_id);
        if(null != employee && employee.getEmp_pwd().equals(password)) {

            return employee;
        }
        return null;
    }

    @Override
    public void changePassword(Employee employee) {
        //更新已经修改过的employee对象
        employeeDao.update(employee);
    }
}
