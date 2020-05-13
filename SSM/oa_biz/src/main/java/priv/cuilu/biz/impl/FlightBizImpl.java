package priv.cuilu.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import priv.cuilu.biz.FlightBiz;
import priv.cuilu.oa.dao.FlightDao;
import priv.cuilu.oa.entity.FlightByTravel;

import java.util.Date;
import java.util.List;
@Service("flightBiz")
public class FlightBizImpl implements FlightBiz {

    @Autowired
    private FlightDao flightDao;

    @Override
    public void add(FlightByTravel flightByTravel) {
        flightDao.insert(flightByTravel);
    }

    @Override
    public void modify(FlightByTravel flightByTravel) {
        flightDao.update(flightByTravel);
    }

    @Override
    public void remove(Integer id) {
        flightDao.delete(id);
    }

    @Override
    public List<FlightByTravel> search(Date startDate, Date backDate) {
        return flightDao.select(startDate,backDate);
    }

}
