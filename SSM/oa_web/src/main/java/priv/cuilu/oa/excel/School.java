package priv.cuilu.oa.excel;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;

public class School extends BaseRowModel {

    @ExcelProperty(value = "序号",index = 0)
    private int order;
    @ExcelProperty(value = "专业班级",index = 1)
    private String classname;
    @ExcelProperty(value = "姓名",index = 2)
    private String name;
    @ExcelProperty(value = "联系电话",index = 3)
    private String phone;
    @ExcelProperty(value = "现在所在地",index = 4)
    private String address;
    @ExcelProperty(value = "自省上确定开学之日起的第几天返校（天）",index = 5)
    private String comeSchool;
    @ExcelProperty(value = "返校意向交通工具",index = 6)
    private String comeMotivate;

    public School(int order, String classname, String name, String phone, String address, String comeSchool, String comeMotivate) {
        this.order = order;
        this.classname = classname;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.comeSchool = comeSchool;
        this.comeMotivate = comeMotivate;
    }

    public School(){

    }

    @Override
    public String toString() {
        return "School{" +
                "order=" + order +
                ", classname='" + classname + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", comeSchool='" + comeSchool + '\'' +
                ", comeMotivate='" + comeMotivate + '\'' +
                '}';
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getComeSchool() {
        return comeSchool;
    }

    public void setComeSchool(String comeSchool) {
        this.comeSchool = comeSchool;
    }

    public String getComeMotivate() {
        return comeMotivate;
    }

    public void setComeMotivate(String comeMotivate) {
        this.comeMotivate = comeMotivate;
    }
}
