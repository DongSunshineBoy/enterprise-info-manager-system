package priv.rulan.oa.entity;

import java.util.Objects;

public class Score {
    private String id;
    private Employee employee;
    private double score;
    private String emp_id;
    private Integer rep_id;

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public Integer getRep_id() {
        return rep_id;
    }

    public void setRep_id(Integer rep_id) {
        this.rep_id = rep_id;
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(String emp_id) {
        this.emp_id = emp_id;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "Score{" +
                "id='" + id + '\'' +
                ", employee=" + employee +
                ", score=" + score +
                ", emp_id='" + emp_id + '\'' +
                ", rep_id=" + rep_id +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Score score1 = (Score) o;
        return Double.compare(score1.score, score) == 0 &&
                Objects.equals(id, score1.id) &&
                Objects.equals(employee, score1.employee) &&
                Objects.equals(emp_id, score1.emp_id) &&
                Objects.equals(rep_id, score1.rep_id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, employee, score, emp_id, rep_id);
    }
}
