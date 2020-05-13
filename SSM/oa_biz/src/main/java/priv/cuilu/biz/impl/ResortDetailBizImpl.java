package priv.cuilu.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import priv.cuilu.biz.ResortDetailBiz;
import priv.cuilu.oa.dao.ResortDetailDao;
import priv.cuilu.oa.entity.ResortDetailByTravel;

@Service("reportDetailBiz")
public class ResortDetailBizImpl implements ResortDetailBiz {

    @Autowired
    private ResortDetailDao resortDetailDao;
    @Override
    public void add(ResortDetailByTravel resortByTravel) {
        resortDetailDao.insert(resortByTravel);
    }

    @Override
    public void modify(ResortDetailByTravel resortByTravel) {
        resortDetailDao.update(resortByTravel);
    }

    @Override
    public void remove(Integer id) {
        resortDetailDao.delete(id);
    }

    @Override
    public ResortDetailByTravel search(Integer id) {
        return resortDetailDao.select(id);
    }
}
