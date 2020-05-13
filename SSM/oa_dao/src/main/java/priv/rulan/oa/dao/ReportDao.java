package priv.rulan.oa.dao;

import org.springframework.stereotype.Repository;
import priv.rulan.oa.entity.Report;

import java.util.*;

/**
 * 报销单接口
 */
@Repository("reportDao")
public interface ReportDao {
    /**
     * 添加
     * @param report
     */
    void insert(Report report);

    /**
     * 修改
     * @param report
     */
    void update(Report report);

    /**
     * 删除
     * @param id
     */
    void delete(int id);

    /**
     * 查找
     * @param id
     * @return
     */
    Report select(int id);

    /**
     * 创建者的报销单
     * @param cid
     * @return
     */
    List<Report> selectByCreateId(String cid);

    /**
     * 处理人要处理的报销单
     * @param nid
     * @return
     */
    List<Report> selectByNextDealId(String nid);


}
