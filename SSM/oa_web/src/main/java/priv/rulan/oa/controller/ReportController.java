package priv.rulan.oa.controller;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import priv.rulan.biz.ReportBiz;
import priv.rulan.biz.ScoreBiz;
import priv.rulan.oa.dto.ReportInfo;
import priv.rulan.oa.entity.DealingLog;
import priv.rulan.oa.entity.Employee;
import priv.rulan.oa.entity.Report;
import priv.rulan.oa.entity.Score;
import priv.rulan.oa.global.Content;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.*;

@Controller("reportWeb")

@RequestMapping("/claim_voucher")
public class ReportController {

    @Autowired
    private ReportBiz reportBiz;


    @Autowired
    private ScoreBiz scoreBiz;

    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("items", Content.getCost());
        map.put("info",new ReportInfo());
        return "claim_voucher_add";
    }

    @RequestMapping("/add")
    public String add(HttpSession session, ReportInfo info, @RequestParam("file") MultipartFile file) throws UnsupportedEncodingException {
        String filePath = "D:/file/";
        try{
            if(!file.isEmpty()){
                FileUtils.copyInputStreamToFile(file.getInputStream(),new File(filePath,
                        file.getOriginalFilename()));
            }
        }catch(IOException e){
            e.printStackTrace();
        }
        System.out.println("reportInfo中的信息有：----------------------------------------"+info);
        Employee employee = (Employee)session.getAttribute("employee");
        System.out.println("创建人——————----------————————————————"+employee.getEmp_name());
        System.out.println("id为——————----------————————————————"+info.getReport().getRep_id());
        //设置项目创建人
        info.getReport().setRep_initiator(employee.getEmp_id());
        //项目文件路径
        info.getReport().setRep_imageUrl(filePath+file.getOriginalFilename());
        //保存项目
        reportBiz.save(info.getReport(),info.getItems());
        //设置成绩得关联项目创建人
        Score score = new Score();
        score.setRep_id(info.getReport().getRep_id());

        reportBiz.score(score);

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

    @RequestMapping("/downLoad")
    public ResponseEntity<byte[]> download(String path) throws IOException {
        File file = new File(path);
        HttpHeaders headers = new HttpHeaders();
        //headers.setAccessControlRequestMethod(HttpMethod.POST);
        String fileName = new String(path.substring(8).getBytes("UTF-8"),"ISO-8859-1");
        headers.setContentDispositionFormData("attachment",fileName);
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        return new ResponseEntity<>(FileUtils.readFileToByteArray(file),headers, HttpStatus.OK);
    }
    @RequestMapping("/to_update")
    public String toUpdate(@RequestParam Integer id,Map<String,Object> map){
        map.put("items", Content.getCost());
        ReportInfo info = new ReportInfo();
        System.out.println("id 为"+id);
        System.out.println("订单为==============================================："+reportBiz.get(id));
        System.out.println("订单条目为========================================="+reportBiz.getItems(id));
        info.setReport(reportBiz.get(id));
        System.out.println("获取"+id+"的条款为--------------------------------------------------------"+reportBiz.getItems(id));
        info.setItems(reportBiz.getItems(id));
        map.put("info",info);
        return "claim_voucher_update";
    }

    @RequestMapping("/update")
    public String update(HttpSession session,ReportInfo info,@RequestParam("file")MultipartFile file){
        String filePath = "D:/file/";
        //旧文件
        File oldFile = new File(filePath+info.getReport().getRep_imageUrl());
        //删除旧的文件
        oldFile.delete();
        try{
            if(!file.isEmpty()){
                FileUtils.copyInputStreamToFile(file.getInputStream(),new File(filePath,
                        file.getOriginalFilename()));
            }
        }catch (IOException e){
            e.printStackTrace();
        }
        Employee employee = (Employee) session.getAttribute("employee");
        //项目文件路径
        info.getReport().setRep_imageUrl(filePath+file.getOriginalFilename());
        info.getReport().setRep_initiator(employee.getEmp_id());
        reportBiz.updateReport(info.getReport(),info.getItems());
        return "redirect:deal";
    }

    @RequestMapping("/to_check")
    public String toCheck(@RequestParam Integer id,Map<String,Object> map){
        map.put("report",reportBiz.get(id));
        map.put("items",reportBiz.getItems(id));
        map.put("records",reportBiz.getRecords(id));
        Score score = new Score();
        score.setRep_id(id);
        map.put("score",score);
        DealingLog dealingLog = new DealingLog();
        dealingLog.setDea_report(id);
        map.put("record",dealingLog);
        return "claim_voucher_check";
    }

    @RequestMapping("/check")
    public String check(HttpSession session,DealingLog dealingLog,@RequestParam("score") double score){
        System.out.println("其中得成绩为:"+score);
        Employee employee = (Employee) session.getAttribute("employee");
       dealingLog.setDea_handler(employee.getEmp_id());
       Score newScore = scoreBiz.search(dealingLog.getDea_report());
       newScore.setScore(score);
       newScore.setEmp_id(employee.getEmp_id());
       scoreBiz.modify(newScore);
       reportBiz.deal(dealingLog);
        return "redirect:deal";
    }
    @RequestMapping("/checkNoWithScore")
    public String check(HttpSession session,DealingLog dealingLog){
        Employee employee = (Employee) session.getAttribute("employee");
        dealingLog.setDea_handler(employee.getEmp_id());
        reportBiz.deal(dealingLog);
        return "redirect:deal";
    }

    @RequestMapping("/submit")
    public String submit(int id){
        reportBiz.submit(id);
        return "redirect:deal";
    }

    @RequestMapping("/to_delete")
    public String to_delete(int id){
        reportBiz.delete(id);
        return "redirect:self";
    }
}
