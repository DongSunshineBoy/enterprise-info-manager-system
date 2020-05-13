package priv.rulan.oa.dto;

import priv.rulan.oa.entity.Report;
import priv.rulan.oa.entity.ReportDetail;
import priv.rulan.oa.entity.Score;

import java.util.*;

public class ReportInfo {

    private Report report;

    private List<ReportDetail> items;



    @Override
    public String toString() {
        return "ReportInfo{" +
                "report=" + report +
                ", items=" + items +
                '}';
    }

    public Report getReport() {
        return report;
    }

    public void setReport(Report report) {
        this.report = report;
    }

    public List<ReportDetail> getItems() {
        return items;
    }

    public void setItems(List<ReportDetail> items) {
        this.items = items;
    }
}
