package priv.rulan.oa.dao;

import  java.util.*;

import org.springframework.stereotype.Repository;
import priv.rulan.oa.entity.Department;

/**
 * 部门管理接口
 */
@Repository("departmentDao")
public interface DepartmentDao {

    /**
     * 添加部门
     * @param department
     */
    void insert(Department department);

    /**
     * 修改部门
     * @param department
     */
    void update(Department department);

    /**
     * 删除部门
     * @param department
     */
    void delete(String department);

    /**
     * 查找部门
     * @param departmentName
     * @return
     */
    Department select(String departmentName);

    /**
     * 获取所有部门
     * @return
     */
    List<Department> getAll();
}
