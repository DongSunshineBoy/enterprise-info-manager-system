package priv.rulan.oa.entity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;
import java.util.Objects;

/**
 * 报表实体类
 */
public class Report {

    //成绩
    private Score score;

    //创建者
    private Employee initiator;

    //处理者
    private Employee handler;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    //发起日期
    private Date  rep_date;
    //待处理者
    private String rep_unHandler;

    private String rep_status;

    //项目名称
    private String rep_projectName;


    //项目文件路径
    private String rep_imageUrl;

    //学科类别
    private String rep_majorClass;


    //报表id
    private Integer rep_id;
    //申请缘由
    private String rep_reason;
    //发起人
    private String rep_initiator;

    public Score getScore() {
        return score;
    }

    public void setScore(Score score) {
        this.score = score;
    }




    public String getRep_imageUrl() {
        return rep_imageUrl;
    }

    public void setRep_imageUrl(String rep_imageUrl) {
        this.rep_imageUrl = rep_imageUrl;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Report report = (Report) o;
        return Objects.equals(initiator, report.initiator) &&
                Objects.equals(handler, report.handler) &&
                Objects.equals(rep_id, report.rep_id) &&
                Objects.equals(rep_reason, report.rep_reason) &&
                Objects.equals(rep_initiator, report.rep_initiator) &&
                Objects.equals(rep_date, report.rep_date) &&
                Objects.equals(rep_unHandler, report.rep_unHandler) &&
                Objects.equals(rep_status, report.rep_status) &&
                Objects.equals(rep_projectName, report.rep_projectName) &&
                Objects.equals(rep_majorClass, report.rep_majorClass);
    }

    @Override
    public int hashCode() {
        return Objects.hash(initiator, handler, rep_id, rep_reason, rep_initiator, rep_date, rep_unHandler, rep_status, rep_projectName, rep_majorClass);
    }

    @Override
    public String toString() {
        return "Report{" +
                "initiator=" + initiator +
                ", handler=" + handler +
                ", rep_id=" + rep_id +
                ", rep_reason='" + rep_reason + '\'' +
                ", rep_initiator='" + rep_initiator + '\'' +
                ", rep_date=" + rep_date +
                ", rep_unHandler='" + rep_unHandler + '\'' +
                ", rep_status='" + rep_status + '\'' +
                ", rep_projectName='" + rep_projectName + '\'' +
                ", rep_majorClass='" + rep_majorClass + '\'' +
                '}';
    }

    public String getRep_projectName() {
        return rep_projectName;
    }

    public void setRep_projectName(String rep_projectName) {
        this.rep_projectName = rep_projectName;
    }

    public String getRep_majorClass() {
        return rep_majorClass;
    }

    public void setRep_majorClass(String rep_majorClass) {
        this.rep_majorClass = rep_majorClass;
    }



    public Employee getInitiator() {
        return initiator;
    }

    public void setInitiator(Employee initiator) {
        this.initiator = initiator;
    }

    public Employee getHandler() {
        return handler;
    }

    public void setHandler(Employee handler) {
        this.handler = handler;
    }





    public Integer getRep_id() {
        return rep_id;
    }

    public void setRep_id(Integer rep_id) {
        this.rep_id = rep_id;
    }

    public String getRep_reason() {
        return rep_reason;
    }

    public void setRep_reason(String rep_reason) {
        this.rep_reason = rep_reason;
    }

    public String getRep_initiator() {
        return rep_initiator;
    }

    public void setRep_initiator(String rep_initiator) {
        this.rep_initiator = rep_initiator;
    }

    public Date getRep_date() {
        return rep_date;
    }

    public void setRep_date(Date rep_date) {
        this.rep_date = rep_date;
    }

    public String getRep_unHandler() {
        return rep_unHandler;
    }

    public void setRep_unHandler(String rep_unHandler) {
        this.rep_unHandler = rep_unHandler;
    }




    public String getRep_status() {
        return rep_status;
    }

    public void setRep_status(String rep_status) {
        this.rep_status = rep_status;
    }
}
