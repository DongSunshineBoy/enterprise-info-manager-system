package priv.cuilu.biz;

import priv.cuilu.oa.entity.FlightByTravel;
import java.util.*;

public interface FlightBiz {
    public void add(FlightByTravel flightByTravel);
    public void modify(FlightByTravel flightByTravel);
    public void remove(Integer id);
    public List<FlightByTravel> search(Date startDate,Date backDate);
}
