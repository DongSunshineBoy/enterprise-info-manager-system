package priv.rulan.biz;

import java.util.*;

import priv.rulan.oa.entity.Department;

/**
 * 业务方法
 */
public interface DepartmentBiz {

    /**
     * 添加
     */


    public void add(Department department);

    /**
     * 修改
     */
    public void edit(Department department);

    /**
     * 删除
     */
    public void remove(String name);

    /**
     * 获取部门信息
     */
    public Department get(String name);

    /**
     * 获取所有部门信息
     */
    public List<Department> getAllDepartment();
}
