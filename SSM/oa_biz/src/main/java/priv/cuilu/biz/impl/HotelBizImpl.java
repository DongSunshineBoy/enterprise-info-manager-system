package priv.cuilu.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import priv.cuilu.biz.HotelBiz;
import priv.cuilu.oa.dao.HotelDao;
import priv.cuilu.oa.entity.HotelByTravel;

import java.util.List;

@Service("hotelBiz")
public class HotelBizImpl implements HotelBiz {

    @Autowired
    private HotelDao hotelDao;

    @Override
    public void add(HotelByTravel hotelByTravel) {
        hotelDao.insert(hotelByTravel);
    }

    @Override
    public void modify(HotelByTravel hotelByTravel) {
        hotelDao.update(hotelByTravel);
    }

    @Override
    public void remove(Integer id) {
        hotelDao.delete(id);
    }

    @Override
    public List<HotelByTravel> search(HotelByTravel hotel) {
        return hotelDao.select(hotel);
    }



}
