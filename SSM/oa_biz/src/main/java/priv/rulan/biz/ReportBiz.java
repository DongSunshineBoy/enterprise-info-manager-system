package priv.rulan.biz;

import priv.rulan.oa.entity.DealingLog;
import priv.rulan.oa.entity.Report;
import priv.rulan.oa.entity.ReportDetail;
import priv.rulan.oa.entity.Score;

import java.util.*;

public interface ReportBiz {

    //保存项目相关得成绩
    void score(Score score);

    void save(Report report, List<ReportDetail> items);
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


    /**
     * 报销单处理记录
     * @param dealingLog
     */
    void deal(DealingLog dealingLog);


    /**
     * 删除报销单
     * @param id
     */
    public void delete(int id);


    /**
     * 提交报销单
     * @param id  报销单id
     */
    public void submit(int id);


}
