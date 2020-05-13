package priv.cuilu.oa.dao;

import org.springframework.stereotype.Repository;
import priv.cuilu.oa.entity.ResortDetailByTravel;

@Repository("resortDetail")
public interface ResortDetailDao {
    void insert(ResortDetailByTravel reportDetailDao);
    void update(ResortDetailByTravel reportDetailDao);
    void delete(Integer id);
    ResortDetailByTravel select(Integer id);
}
