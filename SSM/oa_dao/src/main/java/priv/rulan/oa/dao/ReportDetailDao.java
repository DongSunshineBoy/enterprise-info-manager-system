package priv.rulan.oa.dao;

import org.springframework.stereotype.Repository;
import priv.rulan.oa.entity.ReportDetail;

import java.util.*;

@Repository("detailDao")
public interface ReportDetailDao {
    /**
     * 插入条目
     * @param detail
     */
    void insert(ReportDetail detail);

    /**
     * 修改条目
     * @param detail
     */
    void update(ReportDetail detail);

    /**
     * 删除条目
     * @param id
     */
    void delete(int id);

    /**
     * 挑选所有条目
     * @param did
     * @return
     */
    List<ReportDetail> selectByDetail(int did);
}
