package priv.cuilu.biz;

import priv.cuilu.oa.entity.Employee;

import java.util.List;

public interface EmployeeBiz {

    /**
     * 添加
     */

    public void add(Employee employee);

    /**
     * 修改
     */
    public void edit(Employee employee);

    /**
     * 删除
     */
    public void remove(String name);

    /**
     * 获取员工信息
     */
    public Employee get(String name);

    /**
     * 获取所有员工信息
     */
    public List<Employee> getAllDepartment();
}
