package priv.cuilu.biz;

import priv.cuilu.oa.entity.HotelByTravel;

import java.util.List;

public interface HotelBiz {
    public void add(HotelByTravel hotelByTravel);
    public void modify(HotelByTravel hotelByTravel);
    public void remove(Integer id);
    public List<HotelByTravel> search(HotelByTravel hotel);
}
