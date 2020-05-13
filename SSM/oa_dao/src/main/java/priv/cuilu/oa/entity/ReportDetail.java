package priv.cuilu.oa.entity;

import java.util.Objects;

/**
 * 报表详情实体类
 */
public class ReportDetail {


    //报表详情编号
    private Integer det_id;
    //报表编号
    private Integer rep_id;

    //申报金额类型
    private String det_moneyType;
    //申请金额
    private Double det_cost;
    //申请描述
    private String det_desc;

    @Override
    public String toString() {
        return "ReportDetail{" +
                "det_id=" + det_id +
                ", rep_id=" + rep_id +
                ", det_moneyType='" + det_moneyType + '\'' +
                ", det_cost=" + det_cost +
                ", det_desc='" + det_desc + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ReportDetail that = (ReportDetail) o;
        return Objects.equals(det_id, that.det_id) &&
                Objects.equals(rep_id, that.rep_id) &&
                Objects.equals(det_moneyType, that.det_moneyType) &&
                Objects.equals(det_cost, that.det_cost) &&
                Objects.equals(det_desc, that.det_desc);
    }


    public Integer getDet_id() {
        return det_id;
    }

    public void setDet_id(Integer det_id) {
        this.det_id = det_id;
    }


    public String getDet_moneyType() {
        return det_moneyType;
    }

    public void setDet_moneyType(String det_moneyType) {
        this.det_moneyType = det_moneyType;
    }

    public Double getDet_cost() {
        return det_cost;
    }

    public void setDet_cost(Double det_cost) {
        this.det_cost = det_cost;
    }

    public String getDet_desc() {
        return det_desc;
    }

    public void setDet_desc(String det_desc) {
        this.det_desc = det_desc;
    }
    public Integer getRep_id() {
        return rep_id;
    }

    public void setRep_id(Integer rep_id) {
        this.rep_id = rep_id;
    }
}
