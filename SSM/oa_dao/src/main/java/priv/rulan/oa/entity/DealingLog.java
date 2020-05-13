package priv.rulan.oa.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.Objects;

public class DealingLog {

    //处理人
    private Employee dealer;
    //报销记录
    private Integer dea_id;
    //报销单
    private Integer dea_report;
    //处理人
    private String dea_handler;

    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm")
    //处理日期
    private Date dea_date;
    //处理类型
    private String dea_type;
    //处理结果
    private String dea_result;
    //备注
    private String dea_remark;


    @Override
    public String toString() {
        return "DealingLog{" +
                "dealer=" + dealer +
                ", dea_id=" + dea_id +
                ", dea_report=" + dea_report +
                ", dea_handler='" + dea_handler + '\'' +
                ", dea_date=" + dea_date +
                ", dea_type='" + dea_type + '\'' +
                ", dea_result='" + dea_result + '\'' +
                ", dea_remark='" + dea_remark + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DealingLog that = (DealingLog) o;
        return Objects.equals(dealer, that.dealer) &&
                Objects.equals(dea_id, that.dea_id) &&
                Objects.equals(dea_report, that.dea_report) &&
                Objects.equals(dea_handler, that.dea_handler) &&
                Objects.equals(dea_date, that.dea_date) &&
                Objects.equals(dea_type, that.dea_type) &&
                Objects.equals(dea_result, that.dea_result) &&
                Objects.equals(dea_remark, that.dea_remark);
    }

    @Override
    public int hashCode() {
        return Objects.hash(dealer, dea_id, dea_report, dea_handler, dea_date, dea_type, dea_result, dea_remark);
    }

    public Employee getDealer() {
        return dealer;
    }

    public void setDealer(Employee dealer) {
        this.dealer = dealer;
    }

    public Integer getDea_id() {
        return dea_id;
    }

    public void setDea_id(Integer dea_id) {
        this.dea_id = dea_id;
    }

    public Integer getDea_report() {
        return dea_report;
    }

    public void setDea_report(Integer dea_report) {
        this.dea_report = dea_report;
    }

    public String getDea_handler() {
        return dea_handler;
    }

    public void setDea_handler(String dea_handler) {
        this.dea_handler = dea_handler;
    }

    public Date getDea_date() {
        return dea_date;
    }

    public void setDea_date(Date dea_date) {
        this.dea_date = dea_date;
    }

    public String getDea_type() {
        return dea_type;
    }

    public void setDea_type(String dea_type) {
        this.dea_type = dea_type;
    }

    public String getDea_result() {
        return dea_result;
    }

    public void setDea_result(String dea_result) {
        this.dea_result = dea_result;
    }

    public String getDea_remark() {
        return dea_remark;
    }

    public void setDea_remark(String dea_remark) {
        this.dea_remark = dea_remark;
    }
}
