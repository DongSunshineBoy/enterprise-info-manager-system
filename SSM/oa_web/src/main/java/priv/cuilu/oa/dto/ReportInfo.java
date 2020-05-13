package priv.cuilu.oa.dto;

import priv.cuilu.oa.entity.Report;
import priv.cuilu.oa.entity.ReportDetail;

import java.util.*;

public class ReportInfo {

    private Report report;

    private List<ReportDetail> items;


    @Override
    public String toString() {
        return "ReportInfo{" +
                "report=" + report +
                ", item=" + items +
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
