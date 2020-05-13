package priv.cuilu.oa.dao;

import java.util.*;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import priv.cuilu.oa.entity.FlightByTravel;

@Repository("flightDao")
public interface FlightDao {
    void insert(FlightByTravel flightByTravel);
    void update(FlightByTravel flightByTravel);
    void delete(Integer id);
    List<FlightByTravel>  select(@Param(value = "startDate") Date startDate, @Param(value = "backDate") Date backDate);
}
