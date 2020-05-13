package priv.cuilu.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import priv.cuilu.biz.ResortBiz;
import priv.cuilu.oa.dao.ResortDao;
import priv.cuilu.oa.entity.ResortByTravel;

import java.util.List;

@Service("resortBiz")
public class ResortBizImpl implements ResortBiz {
    @Qualifier("resortDao")
    @Autowired
    private ResortDao resortDao;

    @Override
    public void add(ResortByTravel resortByTravel) {
        resortDao.insert(resortByTravel);
    }

    @Override
    public void modify(ResortByTravel resortByTravel) {
        resortDao.update(resortByTravel);
    }

    @Override
    public void remove(Integer id) {
        resortDao.delete(id);
    }


    @Override
    public ResortByTravel search(Integer id) {
        return resortDao.select(id);
    }

    @Override
    public List<ResortByTravel> searchAll() {
        return resortDao.getAll();
    }
}
