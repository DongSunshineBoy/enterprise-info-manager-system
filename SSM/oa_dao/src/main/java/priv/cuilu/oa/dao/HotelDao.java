package priv.cuilu.oa.dao;

import org.springframework.stereotype.Repository;
import priv.cuilu.oa.entity.HotelByTravel;

import java.util.List;

@Repository("hotelDao")
public interface HotelDao {
    void insert(HotelByTravel hotelByTravel);
    void update(HotelByTravel hotelByTravel);
    void delete(Integer id);
    List<HotelByTravel> select(HotelByTravel hotel);
}
