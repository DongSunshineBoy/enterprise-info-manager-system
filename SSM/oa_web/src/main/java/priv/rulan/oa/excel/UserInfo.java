package priv.rulan.oa.excel;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;

public class UserInfo extends BaseRowModel {

    @ExcelProperty(value = "名称",index = 0)
    private String name;

    @ExcelProperty(value = "性别",index=1)
    private String gender;

    @ExcelProperty(value = "年龄",index =2 )
    private int age;

    public UserInfo(String name, String gender, int age) {
        this.name = name;
        this.gender = gender;
        this.age = age;
    }
    public UserInfo(){

    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", age=" + age +
                '}';
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
