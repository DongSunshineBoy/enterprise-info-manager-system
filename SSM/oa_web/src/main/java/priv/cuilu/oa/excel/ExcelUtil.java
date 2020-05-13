package priv.cuilu.oa.excel;

import com.alibaba.excel.EasyExcelFactory;
import com.alibaba.excel.ExcelWriter;
import com.alibaba.excel.event.AnalysisEventListener;
import com.alibaba.excel.metadata.BaseRowModel;
import com.alibaba.excel.metadata.Sheet;
import com.alibaba.excel.support.ExcelTypeEnum;
import org.apache.poi.ss.formula.functions.T;
import java.util.*;
import java.io.*;

public class ExcelUtil {
    /**
     * 读取excel
     * @param file
     */
    public static Boolean readExcel(File file, Class<? extends BaseRowModel> data, AnalysisEventListener<T> analysisEventListener){
        InputStream  inputStream = null;
        try{
            //输入缓冲流对资源
            inputStream = new BufferedInputStream(new FileInputStream(file.getAbsoluteFile()));

            //实例化表格
            Sheet sheet = new Sheet(1,1,data);

            //按照指定监听器读取指定表格中的数据
            EasyExcelFactory.readBySax(inputStream,sheet,analysisEventListener);
        }catch(IOException ioException){
            ioException.printStackTrace();
            //读取失败
            return false;
        }finally {
            try {
                inputStream.close();
                //关闭资源
            }catch (IOException io){
                io.printStackTrace();
            }
        }
        return true;
    }

    /**
     * 写入excel
     * @param file
     * @param clazz
     * @param data
     * @param sheetNo
     * @return
     */
    public static Boolean writeExcel(File file, Class<? extends BaseRowModel> clazz, List<? extends BaseRowModel> data,int sheetNo) {
        BufferedOutputStream bos = null;
        try {
            //输出流对接本地资源
            bos = new BufferedOutputStream(new FileOutputStream(file.getAbsoluteFile()));

            //利用ExcelWriter去对接本地资源流
            ExcelWriter writer = new ExcelWriter(bos, ExcelTypeEnum.XLSX);

            //写入指定表格
            Sheet sheet = new Sheet(sheetNo, 0,clazz);
            //写入指定表格
            writer.write(data,sheet);
            //写入完成刷新缓冲流
            writer.finish();
        } catch (Exception e) {
            e.printStackTrace();
            //读取异常
            return false;
        } finally {
            try{
                bos.close();
            }catch (IOException e){
                e.printStackTrace();
            }
        }
        return true;
    }
}
