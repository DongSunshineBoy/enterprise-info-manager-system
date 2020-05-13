package priv.cuilu.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import priv.cuilu.biz.DepartmentBiz;
import priv.cuilu.oa.dao.DepartmentDao;
import priv.cuilu.oa.entity.Department;

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
