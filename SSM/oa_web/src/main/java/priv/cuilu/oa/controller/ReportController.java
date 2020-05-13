package priv.cuilu.oa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import priv.cuilu.biz.ReportBiz;
import priv.cuilu.oa.dto.ReportInfo;
import priv.cuilu.oa.entity.DealingLog;
import priv.cuilu.oa.entity.Employee;
import priv.cuilu.oa.global.Content;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller("reportWeb")

@RequestMapping("/claim_voucher")
public class ReportController {

    @Autowired
    private ReportBiz reportBiz;

    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("items", Content.getCost());
        map.put("info",new ReportInfo());
        return "claim_voucher_add";
    }

    @RequestMapping("/add")
    public String add(HttpSession session, ReportInfo info){
        System.out.println("reportInfo中的信息有：----------------------------------------"+info);
        Employee employee = (Employee)session.getAttribute("employee");
        System.out.println("创建人——————----------————————————————"+employee.getEmp_id());
        info.getReport().setRep_initiator(employee.getEmp_id());
        reportBiz.save(info.getReport(),info.getItems());

        //根据报告中的id查询报表中的详情列表
        return "redirect:detail?id="+info.getReport().getRep_id();
    }


    @RequestMapping("/detail")
    public String detail(Map<String,Object> map, @RequestParam Integer id){
        map.put("report",reportBiz.get(id));
        map.put("items",reportBiz.getItems(id));
        System.out.println(reportBiz.getItems(id)+"id为"+id+"中的数据为---------------");
        map.put("records",reportBiz.getRecords(id));
        return "claim_voucher_detail";
    }

    @RequestMapping("/self")
    public String self(Map<String,Object> map, HttpSession session){
       Employee employee = (Employee) session.getAttribute("employee");
        System.out.println("个人报销单信息为："+reportBiz.getForSelf(employee.getEmp_id()));
       map.put("list",reportBiz.getForSelf(employee.getEmp_id()));
        return "claim_voucher_self";
    }

    @RequestMapping("/deal")
    public String deal(Map<String,Object> map, HttpSession session){
        Employee employee = (Employee) session.getAttribute("employee");
        map.put("list",reportBiz.getForDeal(employee.getEmp_id()));
        return "claim_voucher_deal";
    }

    @RequestMapping("/to_update")
    public String toUpdate(@RequestParam Integer id,Map<String,Object> map){
        map.put("items", Content.getCost());
        ReportInfo info = new ReportInfo();
        System.out.println("id 为"+id);
        System.out.println("订单为==============================================："+reportBiz.get(id));
        System.out.println("订单条目为========================================="+reportBiz.getItems(id));
        info.setReport(reportBiz.get(id));
        info.setItems(reportBiz.getItems(id));
        map.put("info",info);
        return "claim_voucher_update";
    }

    @RequestMapping("/update")
    public String update(HttpSession session,ReportInfo info){
        Employee employee = (Employee) session.getAttribute("employee");
        info.getReport().setRep_initiator(employee.getEmp_id());
        reportBiz.updateReport(info.getReport(),info.getItems());
        return "redirect:deal";
    }

    @RequestMapping("/to_check")
    public String toCheck(@RequestParam Integer id,Map<String,Object> map){
        map.put("report",reportBiz.get(id));
        map.put("items",reportBiz.getItems(id));
        map.put("records",reportBiz.getRecords(id));
        DealingLog dealingLog = new DealingLog();
        dealingLog.setDea_report(id);
        map.put("record",dealingLog);
        return "claim_voucher_check";
    }

    @RequestMapping("/check")
    public String check(HttpSession session,DealingLog dealingLog){
        Employee employee = (Employee) session.getAttribute("employee");
       dealingLog.setDea_handler(employee.getEmp_id());
       reportBiz.deal(dealingLog);
        return "deal";
    }

}
