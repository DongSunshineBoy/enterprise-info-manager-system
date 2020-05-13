package priv.cuilu.oa.excel;

import com.alibaba.excel.EasyExcelFactory;
import com.alibaba.excel.ExcelWriter;
import com.alibaba.excel.metadata.Sheet;
import com.alibaba.excel.metadata.Table;

import java.io.*;
import java.util.*;

public class ExcelTest {

    private static ExcelUtil excelUtil;
    public static void main(String[] args) throws  Exception{

        File file = new File("C:\\Users\\dongwentao\\Desktop\\test.xlsx");
        if(!file.exists()){
            file.createNewFile();
        }
        List<UserInfo> list = new ArrayList<>();
        for (int i = 0; i <100 ; i++) {
            list.add(new UserInfo("李大钊"+i,"男",11));
        }

       boolean flag =  excelUtil.writeExcel(file,UserInfo.class,list,1);

        if(flag == true){
            System.out.println("写入完成");
        }
    }

    public static void writeExcel2()throws Exception {
        // 文件输出位置
        OutputStream out = new FileOutputStream("C:\\Users\\dongwentao\\Desktop\\test.xlsx");

        ExcelWriter writer = EasyExcelFactory.getWriter(out);

        // 动态添加表头，适用一些表头动态变化的场景
        Sheet sheet1 = new Sheet(1, 0);

        sheet1.setSheetName("第一个sheet");

        // 创建一个表格，用于 Sheet 中使用
        Table table1 = new Table(1);

        // 无注解的模式，动态添加表头
        table1.setHead(createTestListStringHead());
        // 写数据
        writer.write1(createDynamicModelList(), sheet1, table1);

        // 将上下文中的最终 outputStream 写入到指定文件中
        writer.finish();

        // 关闭流
        out.close();

    }

    private static List<List<Object>> createDynamicModelList(){
        List<List<Object>> rows = new ArrayList<>();
        for (int i = 0; i <100 ; i++) {
            List<Object> row = new ArrayList<>();
            row.add("字符串"+i);
            row.add(Long.valueOf(1846546546l+i));
            row.add(Integer.valueOf(23333+i));
            row.add("董文涛");
            row.add("110@qq.coom");
            rows.add(row);
        }
        return rows;
    }

    public static List<List<String>> createTestListStringHead(){
        // 模型上没有注解，表头数据动态传入
        List<List<String>> head = new ArrayList<List<String>>();
        List<String> headCoulumn1 = new ArrayList<String>();
        List<String> headCoulumn2 = new ArrayList<String>();
        List<String> headCoulumn3 = new ArrayList<String>();
        List<String> headCoulumn4 = new ArrayList<String>();
        List<String> headCoulumn5 = new ArrayList<String>();

        headCoulumn1.add("第一列");
        headCoulumn1.add("第一列");
        headCoulumn1.add("第一列");
        headCoulumn1.add("第一列");
        headCoulumn1.add("第一列");
        headCoulumn1.add("第一列");


        headCoulumn2.add("第二列");
        headCoulumn2.add("第二列");
        headCoulumn2.add("第二列");

        headCoulumn3.add("第三列");
        headCoulumn3.add("第三列2");
        headCoulumn3.add("第三列2");
        headCoulumn4.add("第一列");
        headCoulumn4.add("第3列");
        headCoulumn4.add("第4列");

        headCoulumn5.add("第五列");
        headCoulumn5.add("第五列");
        headCoulumn5.add("第五列");
        head.add(headCoulumn1);
        head.add(headCoulumn2);
        head.add(headCoulumn3);
        head.add(headCoulumn4);
        head.add(headCoulumn5);
        return head;
    }









}
