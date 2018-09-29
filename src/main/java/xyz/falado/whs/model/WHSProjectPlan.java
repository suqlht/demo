package xyz.falado.whs.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class WHSProjectPlan implements Serializable {
    private Long id;

    private Long subprojectId;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date planBegin;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date planEnd;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date acturalBegin;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date acturalEnd;

    private Long assignerId;

    private Integer planType;

    private Integer workNumber;

    private Integer dayhours;

    private Integer weekDays;

    private List<WHSEmployee> members;

    public String getProblems() {
        return problems;
    }

    public void setProblems(String problems) {
        this.problems = problems;
    }

    private String problems;


    public List<WHSEmployee> getMembers() {
        return members;
    }

    public void setMembers(List<WHSEmployee> members) {
        this.members = members;
    }


    private static final long serialVersionUID = 1L;

    public WHSProjectPlan(Long id, Long subprojectId, Date planBegin, Date planEnd, Date acturalBegin, Date acturalEnd, Long assignerId, Integer planType, Integer workNumber, Integer dayhours, Integer weekDays) {
        this.id = id;
        this.subprojectId = subprojectId;
        this.planBegin = planBegin;
        this.planEnd = planEnd;
        this.acturalBegin = acturalBegin;
        this.acturalEnd = acturalEnd;
        this.assignerId = assignerId;
        this.planType = planType;
        this.workNumber = workNumber;
        this.dayhours = dayhours;
        this.weekDays = weekDays;
    }

    public WHSProjectPlan() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getSubprojectId() {
        return subprojectId;
    }

    public void setSubprojectId(Long subprojectId) {
        this.subprojectId = subprojectId;
    }

    public Date getPlanBegin() {
        return planBegin;
    }

    public void setPlanBegin(Date planBegin) {
        this.planBegin = planBegin;
    }

    public Date getPlanEnd() {
        return planEnd;
    }

    public void setPlanEnd(Date planEnd) {
        this.planEnd = planEnd;
    }

    public Date getActuralBegin() {
        return acturalBegin;
    }

    public void setActuralBegin(Date acturalBegin) {
        this.acturalBegin = acturalBegin;
    }

    public Date getActuralEnd() {
        return acturalEnd;
    }

    public void setActuralEnd(Date acturalEnd) {
        this.acturalEnd = acturalEnd;
    }

    public Long getAssignerId() {
        return assignerId;
    }

    public void setAssignerId(Long assignerId) {
        this.assignerId = assignerId;
    }

    public Integer getPlanType() {
        return planType;
    }

    public void setPlanType(Integer planType) {
        this.planType = planType ;
    }

    public Integer getWorkNumber() {
        return workNumber;
    }

    public void setWorkNumber(Integer workNumber) {
        this.workNumber = workNumber;
    }

    public Integer getDayhours() {
        return dayhours;
    }

    public void setDayhours(Integer dayhours) {
        this.dayhours = dayhours;
    }

    public Integer getWeekDays() {
        return weekDays;
    }

    public void setWeekDays(Integer weekDays) {
        this.weekDays = weekDays;
    }
}