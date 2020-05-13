package priv.rulan.oa.global;

import java.util.*;
public class Content {
    //职务
    public static final String POST_STAFF = "学生";
    public static final String POST_DF = "评委专家";
    public static final String POST_MAJOR = "专业评委专家";
    public static final String POST_GF = "管理员";
    public static final String POST_CASHIER = "立项委员";


    //报销单状态
    public static final String CLAIMVOUCHER_CREATED = "新创建";
    public static final String CLAIMVOUCHER_SUBMIT="已提交";
    public static final String CLAIMVOUCHER_APPROVAL = "已审核";
    public static final String CLAIMVOUCHER_BACK = "已打回";
    public static final String CLAIMVOUCHER_TERMINATED = "未立项";
    public static final String CLAIMVOUCHER_RECHECH = "待复审";
    public static final String CLAIMVOUCHER_PAID = "已立项";

    //审核额度
    public static final double LIMIT_CHECK = 5000.00;


    //处理方法
    public static final String DEAL_CREATE = "创建";
    public static final String DEAL_SUBMIT = "提交";
    public static final String DEAL_UPDATE = "修改";
    public static final String DEAL_BACK = "打回";
    public static final String DEAL_REJECT = "拒绝";
    public static final String DEAL_PAID = "立项";
    public static final String DEAL_PASS = "通过";

    //费用类别
    public static List<String> getCost(){
        List<String> list = new ArrayList<String>();
        list.add("艺术学");
        list.add("管理学");
        list.add("土木工程");
        list.add("水利工程");
        list.add("材料科学与工程");
        list.add("信息通讯工程");
        list.add("计算机科学与技术");
        list.add("农学");
        list.add("医学");
        list.add("工商学");
        return  list;
    }


    //职位
    public static List<String> getPost(){
        List<String> list = new ArrayList<String>();
        list.add(POST_DF);
        list.add(POST_CASHIER);
        list.add(POST_MAJOR);
        return  list;
    }
}
