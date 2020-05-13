package priv.cuilu.oa.excel;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;

import java.util.ArrayList;
import java.util.List;

public  class ExcelListener<T> extends AnalysisEventListener {

    private static final int MAX_BATCH = 2;

    private List<T> list = new ArrayList<>(MAX_BATCH);

    public ExcelListener() {
    }

    @Override
    public void invoke(Object o, AnalysisContext analysisContext) {
       T t = (T)o;
        System.out.println("读取数据为："+t);
       list.add(t);
       if(list.size()>=MAX_BATCH){
           saveData();
           list.clear();
       }
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
        System.out.println("所有数据存储完成!");
    }

    public void saveData(){
        System.out.printf("%d条数据",list.size());
        System.out.println("数据存储成功！");
    }
}
