package priv.cuilu.oa.entity;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

import java.util.Date;
import java.util.Objects;

/**
 * 报表实体类
 */
public class Report {

    //创建者
    private Employee initiator;

    //处理者
    private Employee handler;

    //报表id
    private Integer rep_id;
    //申请缘由
    private String rep_reason;
    //发起人
    private String rep_initiator;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    //发起日期
    private Date  rep_date;
    //待处理者
    private String rep_unHandler;
    @NumberFormat(style = NumberFormat.Style.CURRENCY)
    //申请报销金额
    private Double rep_money;
    //报销单状态
    private String rep_status;

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
                Objects.equals(rep_money, report.rep_money) &&
                Objects.equals(rep_status, report.rep_status);
    }

    @Override
    public int hashCode() {
        return Objects.hash(initiator, handler, rep_id, rep_reason, rep_initiator, rep_date, rep_unHandler, rep_money, rep_status);
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
                ", rep_money=" + rep_money +
                ", rep_status='" + rep_status + '\'' +
                '}';
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

    public Double getRep_money() {
        return rep_money;
    }

    public void setRep_money(Double rep_money) {
        this.rep_money = rep_money;
    }

    public String getRep_status() {
        return rep_status;
    }

    public void setRep_status(String rep_status) {
        this.rep_status = rep_status;
    }
}
