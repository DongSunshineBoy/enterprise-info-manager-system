package priv.rulan.oa.entity;

import java.util.Objects;

/**
 * 报表详情实体类
 */
public class ReportDetail {

    //报表详情编号
    private Integer det_id;
    //报表编号
    private Integer rep_id;

    //发起人
    private String det_sponsor;

    //成员
    private String det_member;

    public String getDet_majorClass() {
        return det_majorClass;
    }

    public void setDet_majorClass(String det_majorClass) {
        this.det_majorClass = det_majorClass;
    }

    //学科类型
    private  String det_majorClass;


    public Integer getDet_id() {
        return det_id;
    }

    public void setDet_id(Integer det_id) {
        this.det_id = det_id;
    }

    public Integer getRep_id() {
        return rep_id;
    }

    public void setRep_id(Integer rep_id) {
        this.rep_id = rep_id;
    }

    public String getDet_sponsor() {
        return det_sponsor;
    }

    public void setDet_sponsor(String det_sponsor) {
        this.det_sponsor = det_sponsor;
    }

    public String getDet_member() {
        return det_member;
    }

    public void setDet_member(String det_member) {
        this.det_member = det_member;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ReportDetail that = (ReportDetail) o;
        return Objects.equals(det_id, that.det_id) &&
                Objects.equals(rep_id, that.rep_id) &&
                Objects.equals(det_sponsor, that.det_sponsor) &&
                Objects.equals(det_member, that.det_member);
    }

    @Override
    public int hashCode() {
        return Objects.hash(det_id, rep_id, det_sponsor, det_member);
    }

    @Override
    public String toString() {
        return "ReportDetail{" +
                "det_id=" + det_id +
                ", rep_id=" + rep_id +
                ", det_sponsor='" + det_sponsor + '\'' +
                ", det_member='" + det_member + '\'' +
                '}';
    }

}
