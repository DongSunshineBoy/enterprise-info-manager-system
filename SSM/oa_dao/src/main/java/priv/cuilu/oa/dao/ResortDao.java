package priv.cuilu.oa.dao;

import org.springframework.stereotype.Repository;
import priv.cuilu.oa.entity.ResortByTravel;

import java.util.List;

@Repository("resortDao")
public interface ResortDao {
    void insert(ResortByTravel resortByTravel);
    void update(ResortByTravel resortByTravel);
    void delete(Integer id);
    ResortByTravel select(Integer id);
    List<ResortByTravel> getAll();
}
