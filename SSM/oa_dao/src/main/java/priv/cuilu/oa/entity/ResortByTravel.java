package priv.cuilu.oa.entity;

public class ResortByTravel {
    private Integer id;
    private String img;
    private String resortName;
    private String presentation;
    private Integer detail_id;

    @Override
    public String toString() {
        return "ResortByTravel{" +
                "id=" + id +
                ", img='" + img + '\'' +
                ", resortName='" + resortName + '\'' +
                ", presentation='" + presentation + '\'' +
                ", detail_id=" + detail_id +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getResortName() {
        return resortName;
    }

    public void setResortName(String resortName) {
        this.resortName = resortName;
    }

    public String getPresentation() {
        return presentation;
    }

    public void setPresentation(String presentation) {
        this.presentation = presentation;
    }

    public Integer getDetail_id() {
        return detail_id;
    }

    public void setDetail_id(Integer detail_id) {
        this.detail_id = detail_id;
    }
}
