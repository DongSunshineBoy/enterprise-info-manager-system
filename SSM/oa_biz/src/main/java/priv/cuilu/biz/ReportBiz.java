package priv.cuilu.biz;

import priv.cuilu.oa.entity.DealingLog;
import priv.cuilu.oa.entity.Report;
import priv.cuilu.oa.entity.ReportDetail;

import java.util.*;

public interface ReportBiz {
    void save(Report report,List<ReportDetail> items);
    Report get(int id);

    /**
     * 获取
     * @param rid
     * @return
     */
    List<ReportDetail> getItems(int rid);

    /**
     * 获取处理记录
     * @param cvid
     * @return
     */
    List<DealingLog> getRecords(int cvid);

    /**
     * 获取员工个人的报销单
     * @param sn
     * @return
     */
    List<Report> getForSelf(String sn);

    /**
     * 获取员工的个人报销单详情
     * @param sn
     * @return
     */
    List<Report> getForDeal(String sn);

    /**
     * 修改报销单
     * @param report
     * @param items
     */
    public void updateReport(Report report, List<ReportDetail> items);


    void deal(DealingLog dealingLog);

}
