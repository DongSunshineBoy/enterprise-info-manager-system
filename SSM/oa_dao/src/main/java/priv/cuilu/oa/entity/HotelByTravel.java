package priv.cuilu.oa.entity;

import java.util.Date;
import java.util.Objects;

public class HotelByTravel {
    private Integer id;
    private String city;
    private Date inDate;
    private Date outDate;
    private Integer containNum;
    private String hotelName;
    private String hotelDesc;
    private String hotelLevel;

    public String getHotelLevel() {
        return hotelLevel;
    }

    public void setHotelLevel(String hotelLevel) {
        this.hotelLevel = hotelLevel;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        HotelByTravel that = (HotelByTravel) o;
        return Objects.equals(id, that.id) &&
                Objects.equals(city, that.city) &&
                Objects.equals(inDate, that.inDate) &&
                Objects.equals(outDate, that.outDate) &&
                Objects.equals(containNum, that.containNum) &&
                Objects.equals(hotelName, that.hotelName) &&
                Objects.equals(hotelDesc, that.hotelDesc);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, city, inDate, outDate, containNum, hotelName, hotelDesc);
    }

    @Override
    public String toString() {
        return "HotelByTravel{" +
                "id=" + id +
                ", city='" + city + '\'' +
                ", inDate=" + inDate +
                ", outDate=" + outDate +
                ", containNum=" + containNum +
                ", hotelName='" + hotelName + '\'' +
                ", hotelDesc='" + hotelDesc + '\'' +
                ", hotelLevel='" + hotelLevel + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Date getInDate() {
        return inDate;
    }

    public void setInDate(Date inDate) {
        this.inDate = inDate;
    }

    public Date getOutDate() {
        return outDate;
    }

    public void setOutDate(Date outDate) {
        this.outDate = outDate;
    }

    public Integer getContainNum() {
        return containNum;
    }

    public void setContainNum(Integer containNum) {
        this.containNum = containNum;
    }

    public String getHotelName() {
        return hotelName;
    }

    public void setHotelName(String hotelName) {
        this.hotelName = hotelName;
    }

    public String getHotelDesc() {
        return hotelDesc;
    }

    public void setHotelDesc(String hotelDesc) {
        this.hotelDesc = hotelDesc;
    }
}
