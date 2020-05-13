package priv.rulan.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import priv.rulan.biz.ReportBiz;
import priv.rulan.oa.dao.*;
import priv.rulan.oa.entity.*;
import priv.rulan.oa.global.Content;

import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

@Service("reportBiz")
public class ReportBizImpl implements ReportBiz {

    //项目成绩
    @Autowired
    private ScoreDao score;

    @Autowired
    private ReportDao reportDao;

    public ScoreDao getScore() {
        return score;
    }

    public void setScore(ScoreDao score) {
        this.score = score;
    }


    //报销单详情
    @Autowired
    private ReportDetailDao detailDao;

    @Qualifier("employeeDao")
    @Autowired
    private EmployeeDao employeeDao;

    //审核记录
    @Autowired
    private DealingLogDao dealingLogDao;

    @Override
    public void score(Score score) {
        this.score.insert(score);
    }

    @Override
    public void save(Report report, List<ReportDetail> items) {
        report.setRep_date(new Date());
        report.setRep_unHandler(report.getRep_initiator());
        report.setRep_status(Content.CLAIMVOUCHER_CREATED);
        reportDao.insert(report);
        for(ReportDetail item:items){
            item.setRep_id(report.getRep_id());
            detailDao.insert(item);
        }
    }

    @Override
    public Report get(int id) {
        return reportDao.select(id);
    }

    @Override
    public List<ReportDetail> getItems(int rid) {
        return detailDao.selectByDetail(rid);
    }


    @Override
    public List<DealingLog> getRecords(int cvid) {
        return dealingLogDao.selectByDealingLog(cvid);
    }

    @Override
    public List<Report> getForSelf(String sn) {
        return reportDao.selectByCreateId(sn);
    }

    @Override
    public List<Report> getForDeal(String sn) {
        return reportDao.selectByNextDealId(sn);
    }

    @Override
    public void updateReport(Report report, List<ReportDetail> items) {
        report.setRep_imageUrl(report.getRep_imageUrl());
        report.setRep_date(report.getRep_date());
        report.setRep_unHandler(report.getRep_initiator());
        report.setRep_status(Content.CLAIMVOUCHER_CREATED);
        reportDao.update(report);

        List<ReportDetail> olds = detailDao.selectByDetail(report.getRep_id());

        for (ReportDetail item:olds) {
            boolean isExist = false;
            for (ReportDetail newItem:items){
                if(item==newItem){
                    isExist = true;
                    break;
                }
            }

            if(!isExist){
                detailDao.delete(item.getDet_id());
            }
        }

        for (ReportDetail reportDetail:items){
            System.out.println("reportDetail中的id为:======================================================"+reportDetail.getDet_id());
            if(reportDetail.getDet_id()>0){

                detailDao.update(reportDetail);

            }else{

                detailDao.insert(reportDetail);
            }
        }
        for(ReportDetail item:items){
            item.setRep_id(report.getRep_id());
            detailDao.insert(item);
        }
    }

    @Override
    public void deal(DealingLog dealingLog) {
       Report report =  reportDao.select(dealingLog.getDea_report());
      Employee employee =  employeeDao.select(dealingLog.getDea_handler());
      String reportStatus =  dealingLog.getDea_type();
      //设置记录信息
        dealingLog.setDea_date(new Date());
        System.out.println("当前的状态为："+reportStatus+"--------------------------------------------");
      switch (reportStatus){

          case Content.DEAL_PASS:
              //当前申请金额小于最大限制并且审核人为总经理
              if(employee.getEmp_position().equals(Content.POST_MAJOR)){

                  System.out.println("--------------------------执行了我-----------------------------------");
                  report.setRep_status(Content.CLAIMVOUCHER_APPROVAL);
                  //获取立项专家人员的员工编号并且设置为待处理人
                  report.setRep_unHandler(employeeDao.selectByDepartmentAndPost(null,Content.POST_CASHIER).get(0).getEmp_id());

                  dealingLog.setDea_result(Content.CLAIMVOUCHER_APPROVAL);
                  break;
              }else{
                  //待复审
                  report.setRep_status(Content.CLAIMVOUCHER_RECHECH);
                  //获取专业评委专家人员的员工编号并且设置为待处理人
                  report.setRep_unHandler(employeeDao.selectByDepartmentAndPost(employee.getDep_id(),Content.POST_MAJOR).get(0).getEmp_id());

                  dealingLog.setDea_date(new Date());
                  dealingLog.setDea_result(Content.CLAIMVOUCHER_RECHECH);
                  break;
              }
          case Content.DEAL_BACK:
              //已打回
              report.setRep_status(Content.CLAIMVOUCHER_BACK);
              //获取创建者
              report.setRep_unHandler(report.getRep_initiator());
              dealingLog.setDea_result(Content.CLAIMVOUCHER_BACK);
              break;

          case Content.DEAL_REJECT:
              //已拒绝
              report.setRep_status(Content.CLAIMVOUCHER_TERMINATED);
              //获取创建者
              report.setRep_unHandler(employee.getEmp_id());
              dealingLog.setDea_result(Content.CLAIMVOUCHER_TERMINATED);
              break;

          case Content.DEAL_PAID:
              //已拒绝
              report.setRep_status(Content.CLAIMVOUCHER_PAID);
              //获取创建者
              report.setRep_unHandler(employee.getEmp_id());
              //处理结果
              dealingLog.setDea_date(new Date());
              dealingLog.setDea_result(Content.CLAIMVOUCHER_PAID);
              break;
          default:
              System.out.println("不存在");
              break;
      }
        //更新报销单和记录信息
        reportDao.update(report);
        dealingLogDao.insert(dealingLog);
    }

    @Override
    public void delete(int id) {
        reportDao.delete(id);
    }

    @Override
    public void submit(int id) {
        //获取报销单
       Report report =  reportDao.select(id);

       //获取创建者
       Employee employee = employeeDao.select(report.getRep_initiator());

       //设置报销单状态
       report.setRep_status(Content.CLAIMVOUCHER_SUBMIT);

       //设置待处理人
       report.setRep_unHandler(employeeDao.selectByDepartmentAndPost(employee.getDep_id(),Content.POST_DF).get(0).getEmp_id());



       //更新报销单
       reportDao.update(report);


       DealingLog dealingLog = new DealingLog();

        //设置报销单关联
        dealingLog.setDea_report(report.getRep_id());

       //设置处理记录处理类型
       dealingLog.setDea_type(Content.DEAL_SUBMIT);

       //处理人
       dealingLog.setDea_handler(employee.getEmp_id());

       dealingLog.setDea_result(Content.CLAIMVOUCHER_SUBMIT);

       dealingLog.setDea_date(new Date());

       dealingLog.setDea_remark("无");

       //保存记录
       dealingLogDao.insert(dealingLog);
    }
}
