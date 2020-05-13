package priv.cuilu.oa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import priv.cuilu.biz.HotelBiz;
import priv.cuilu.oa.entity.HotelByTravel;

import java.util.*;


@Controller("hotelController")
@RequestMapping("/hotel")
public class HotelController {

    @Autowired
    private HotelBiz hotelBiz;

    @RequestMapping("/daelHotel")
    public String processHotel(HotelByTravel hotel,Map<String,Object> map){
        System.out.println("城市"+hotel.getCity()+"入住时间"+hotel.getInDate()+"离时间"+hotel.getOutDate());
       map.put("hotel",hotelBiz.search(hotel));
       return "searchHotel";
    }
}
