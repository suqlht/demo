package xyz.falado.whs.model;

import java.io.Serializable;
import java.util.Date;

public class WHSProjectPlan implements Serializable {
    private Integer id;

    private Integer subprojectId;

    private Date planBegin;

    private Date planEnd;

    private Date acturalBegin;

    private Date acturalEnd;

    private Integer assignerId;

    private String planType;

    private Integer workNumber;

    private Integer dayhours;

    private Integer weekDays;

    private static final long serialVersionUID = 1L;

    public WHSProjectPlan(Integer id, Integer subprojectId, Date planBegin, Date planEnd, Date acturalBegin, Date acturalEnd, Integer assignerId, String planType, Integer workNumber, Integer dayhours, Integer weekDays) {
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

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSubprojectId() {
        return subprojectId;
    }

    public void setSubprojectId(Integer subprojectId) {
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

    public Integer getAssignerId() {
        return assignerId;
    }

    public void setAssignerId(Integer assignerId) {
        this.assignerId = assignerId;
    }

    public String getPlanType() {
        return planType;
    }

    public void setPlanType(String planType) {
        this.planType = planType == null ? null : planType.trim();
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