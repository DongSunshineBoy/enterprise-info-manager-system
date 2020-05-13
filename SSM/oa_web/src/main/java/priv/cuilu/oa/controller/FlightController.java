package priv.cuilu.oa.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import priv.cuilu.biz.FlightBiz;
import priv.cuilu.biz.ResortBiz;
import priv.cuilu.biz.ResortDetailBiz;
import priv.cuilu.oa.entity.FlightByTravel;

@Controller
@RequestMapping("/flight")
public class FlightController {

    @Autowired
    private FlightBiz flightBiz;

    @Autowired
    private ResortDetailBiz resortDetailBiz;

    @Autowired
    private ResortBiz resortBiz;

    @RequestMapping("/to_logue")
    public String to_logue(){
        return  "travelogue";
    }

    @RequestMapping("/to_instamatic")
    public String to_instamatic(){
        return  "instamatic";
    }

    @RequestMapping("/to_hotel")
    public String to_hotel(){
        return  "hotel";
    }

    @RequestMapping("/to_community")
    public String to_community(){
        return  "community";
    }
    @RequestMapping("/to_personal")
    public String to_personal(){
        return  "personal";
    }

    @RequestMapping("/to_compass")
    public String to_compass(){
        return  "compass";
    }

    @RequestMapping("/to_advisory")
    public String to_advisory(Map<String,Object> map){
        map.put("advisory",resortBiz.searchAll());
        return "advisory";
    }

    @RequestMapping("/to_advisory_result")
    public String to_advisory_result(){
        return  "advisory_result";
    }

    @RequestMapping("/to_advisory_detail")
    public String to_advisory_detail(){
        return  "advisory_detail";
    }

    @RequestMapping("/resortDetail")
    public String to_detail(Map<String,Object> map,@RequestParam Integer id){
        System.out.println("id为"+id);
        System.out.println("景点详情信息为"+resortDetailBiz.search(id));
        map.put("resortDetail",resortDetailBiz.search(id));
        return "resortDetail";
    }



    @RequestMapping("/to_index")
    public String toFlight(Map<String,Object> map){
        map.put("resorts",resortBiz.searchAll());
        return "index";
    }

    @RequestMapping("/to_flight")
    public String flight(FlightByTravel flight,Map<String,Object> map){
        System.out.println("开始日期为"+flight.getStart_date()+"=========="+"结束日期为"+flight.getBack_date());
        List<FlightByTravel> flightByTravels = flightBiz.search(flight.getStart_date(),flight.getBack_date());
        System.out.println("航班信息为========="+flightByTravels);
        map.put("flight",flightByTravels);
        return "searchFlight";
    }
}
