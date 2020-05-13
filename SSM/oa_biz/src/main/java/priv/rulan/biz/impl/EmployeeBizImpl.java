package priv.rulan.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import priv.rulan.biz.EmployeeBiz;
import priv.rulan.oa.dao.EmployeeDao;
import priv.rulan.oa.dao.ReportDao;
import priv.rulan.oa.entity.Employee;
import priv.rulan.oa.entity.Report;
import priv.rulan.oa.global.Content;

import java.util.List;

@Service("employeeBiz")
public class EmployeeBizImpl implements EmployeeBiz {

    @Qualifier("employeeDao")
    @Autowired
    private EmployeeDao employeeDao;


    @Override
    public void add(Employee employee) {
        //当添加员工时进行业处理
        employee.setEmp_pwd(employee.getEmp_pwd());
        employeeDao.insert(employee);
    }

    @Override
    public void edit(Employee employee) {
        employeeDao.update(employee);
    }

    @Override
    public void remove(String name) {
        employeeDao.delete(name);
    }

    @Override
    public Employee get(String name) {
        return employeeDao.select(name);
    }

    @Override
    public List<Employee> getAllEmployee() {

        List<Employee> list =  employeeDao.getAll();

        for (int i = 0; i <list.size() ; i++) {
            if(list.get(i).getEmp_position().equals(Content.POST_STAFF)){
                list.remove(list.get(i));
            }
        }
        return list;
    }

}
