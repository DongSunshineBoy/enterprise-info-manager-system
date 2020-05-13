package priv.cuilu.oa.entity;

import java.util.Date;
import java.util.Objects;

public class FlightByTravel {
    private Integer id;
    private Date start_date;
    private Date back_date;
    private String start_place;
    private String arrive_place;
    private Integer canContain;
    private String flight_name;
    private String flightLevel;

    @Override
    public String toString() {
        return "FlightByTravel{" +
                "id=" + id +
                ", start_date=" + start_date +
                ", back_date=" + back_date +
                ", start_place='" + start_place + '\'' +
                ", arrive_place='" + arrive_place + '\'' +
                ", canContain=" + canContain +
                ", flight_name='" + flight_name + '\'' +
                ", flightLevel='" + flightLevel + '\'' +
                '}';
    }

    public String getFlightLevel() {
        return flightLevel;
    }

    public void setFlightLevel(String flightLevel) {
        this.flightLevel = flightLevel;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, start_date, back_date, start_place, arrive_place, canContain, flight_name);
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getStart_date() {
        return start_date;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public Date getBack_date() {
        return back_date;
    }

    public void setBack_date(Date back_date) {
        this.back_date = back_date;
    }

    public String getStart_place() {
        return start_place;
    }

    public void setStart_place(String start_place) {
        this.start_place = start_place;
    }

    public String getArrive_place() {
        return arrive_place;
    }

    public void setArrive_place(String arrive_place) {
        this.arrive_place = arrive_place;
    }

    public Integer getCanContain() {
        return canContain;
    }

    public void setCanContain(Integer canContain) {
        this.canContain = canContain;
    }

    public String getFlight_name() {
        return flight_name;
    }

    public void setFlight_name(String flight_name) {
        this.flight_name = flight_name;
    }
}
