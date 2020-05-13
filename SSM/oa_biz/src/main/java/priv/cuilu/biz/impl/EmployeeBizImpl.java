package priv.cuilu.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import priv.cuilu.biz.EmployeeBiz;
import priv.cuilu.oa.dao.EmployeeDao;
import priv.cuilu.oa.entity.Employee;

import java.util.List;

@Service("employeeBiz")
public class EmployeeBizImpl implements EmployeeBiz {

    @Qualifier("employeeDao")
    @Autowired
    private EmployeeDao employeeDao;

    @Override
    public void add(Employee employee) {
        //当添加员工时进行业处理
        employee.setEmp_pwd("000000");
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
    public List<Employee> getAllDepartment() {
        return employeeDao.getAll();
    }
}
