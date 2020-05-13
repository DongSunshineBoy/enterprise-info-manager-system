package priv.rulan.oa.dao;

import priv.rulan.oa.entity.DealingLog;

import java.util.*;

/**
 * 处理日志记录
 */
public interface DealingLogDao {

    /**
     * 插入
     * @param dealingLog
     */
    void insert(DealingLog dealingLog);

    /**
     * 修改
     * @param dealingLog
     */
    void update(DealingLog dealingLog);

    /**
     * 查询
     * @param id
     */
    void select(int id);

    /**
     * 删除
     * @param id
     */
    void delete(int id);

    /**
     * 查询所有处理记录
     * @return
     */
    List<DealingLog> selectByDealingLog(int id);
}
