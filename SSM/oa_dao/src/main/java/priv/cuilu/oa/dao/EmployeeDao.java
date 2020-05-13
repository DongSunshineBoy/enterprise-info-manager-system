package priv.cuilu.oa.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import priv.cuilu.oa.entity.Employee;

import java.util.List;

@Repository("employeeDao")
public interface EmployeeDao {

    /**
     * 添加员工
     * @param employee
     */
    void insert(Employee employee);

    /**
     * 修改员工
     * @param employee
     */
    void update(Employee employee);

    /**
     * 删除员工
     * @param emp_id
     */
    void delete(String emp_id);

    /**
     * 查找员工
     * @param emp_id
     * @return
     */
    Employee select(String emp_id);

    /**
     * 获取所有员工信息
     * @return
     */
    List<Employee> getAll();

    /**
     * 根据员工职位和职位获取指定员工集合
     * @param dsn
     * @param post
     * @return
     */
    List<Employee> selectByDepartmentAndPost(@Param("dsn") String dsn, @Param("post") String post);

}
