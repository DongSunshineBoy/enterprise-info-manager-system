package priv.cuilu.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import priv.cuilu.biz.ReportBiz;
import priv.cuilu.oa.dao.DealingLogDao;
import priv.cuilu.oa.dao.EmployeeDao;
import priv.cuilu.oa.dao.ReportDao;
import priv.cuilu.oa.dao.ReportDetailDao;
import priv.cuilu.oa.entity.DealingLog;
import priv.cuilu.oa.entity.Employee;
import priv.cuilu.oa.entity.Report;
import priv.cuilu.oa.entity.ReportDetail;
import priv.cuilu.oa.global.Content;

import java.util.Date;
import java.util.List;

@Service("reportBiz")
public class ReportBizImpl implements ReportBiz {

    //报销单
    @Qualifier("reportDao")
    @Autowired
    private ReportDao reportDao;

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
      switch (reportStatus){

          case Content.DEAL_PASS:
              //当前申请金额小于最大限制并且审核人为总经理
              if(report.getRep_money()<=Content.LIMIT_CHECK||employee.getEmp_position().equals(Content.POST_GF)){

                  report.setRep_status(Content.CLAIMVOUCHER_APPROVAL);
                  //获取财务人员的员工编号并且设置为待处理人
                  report.setRep_unHandler(employeeDao.selectByDepartmentAndPost(null,Content.POST_CASHIER).get(0).getEmp_id());

                  dealingLog.setDea_result(Content.CLAIMVOUCHER_APPROVAL);
              }else{
                  //待复审
                  report.setRep_status(Content.CLAIMVOUCHER_RECHECH);
                  //获取总经理人员的员工编号并且设置为待处理人
                  report.setRep_unHandler(employeeDao.selectByDepartmentAndPost(null,Content.POST_GF).get(0).getEmp_id());

                  dealingLog.setDea_result(Content.CLAIMVOUCHER_RECHECH);
              }
          case Content.CLAIMVOUCHER_BACK:
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
              report.setRep_unHandler(null);
              dealingLog.setDea_result(Content.CLAIMVOUCHER_TERMINATED);
              break;

          case Content.DEAL_PAID:
              //已拒绝
              report.setRep_status(Content.CLAIMVOUCHER_PAID);
              //获取创建者
              report.setRep_unHandler(null);
              //处理结果
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
}
