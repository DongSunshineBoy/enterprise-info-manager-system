package priv.rulan.biz.impl;

import org.apache.ibatis.ognl.enhance.ContextClassLoader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;
import priv.rulan.biz.DepartmentBiz;
import priv.rulan.oa.dao.DepartmentDao;
import priv.rulan.oa.entity.Department;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.*;

@Service("departmentBiz")
public class DepartmentBizImpl implements DepartmentBiz {

    @Qualifier("departmentDao")
    @Autowired
    private DepartmentDao departmentDao;

    @Override
    public void add(Department department) {
        departmentDao.insert(department);

    }

    @Override
    public void edit(Department department) {
        departmentDao.update(department);

    }

    @Override
    public void remove(String name) {
        departmentDao.delete(name);
    }

    @Override
    public Department get(String name) {
       return departmentDao.select(name);
    }

    @Override
    public List<Department> getAllDepartment() {
       return departmentDao.getAll();
    }
}
