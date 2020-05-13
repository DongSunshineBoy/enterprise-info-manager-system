package priv.cuilu.oa.entity;

public class ResortDetailByTravel {
    private Integer detail_id;
    private String detail_img;
    private String detail_desc;
    private String detail_remark;

    @Override
    public String toString() {
        return "ResortDetailByTravel{" +
                "detail_id=" + detail_id +
                ", detail_img='" + detail_img + '\'' +
                ", detail_desc='" + detail_desc + '\'' +
                ", detail_remark='" + detail_remark + '\'' +
                '}';
    }

    public Integer getDetail_id() {
        return detail_id;
    }

    public void setDetail_id(Integer detail_id) {
        this.detail_id = detail_id;
    }

    public String getDetail_img() {
        return detail_img;
    }

    public void setDetail_img(String detail_img) {
        this.detail_img = detail_img;
    }

    public String getDetail_desc() {
        return detail_desc;
    }

    public void setDetail_desc(String detail_desc) {
        this.detail_desc = detail_desc;
    }

    public String getDetail_remark() {
        return detail_remark;
    }

    public void setDetail_remark(String detail_remark) {
        this.detail_remark = detail_remark;
    }
}
