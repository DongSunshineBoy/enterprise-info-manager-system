package priv.cuilu.biz;

import priv.cuilu.oa.entity.Employee;

/**
 * 登陆
 */
public interface GlobalBiz {
    /**
     * 登陆功能
     * @param sn
     * @param password
     * @return
     */
    Employee login(String sn,String password);

    /**
     * 修改密码
     * @param employee
     */
    void changePassword(Employee employee);

}
