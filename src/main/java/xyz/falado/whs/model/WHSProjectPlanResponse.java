package xyz.falado.whs.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class WHSProjectPlan implements Serializable {
    private Long id;

    private Integer subprojectId;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date planBegin;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date planEnd;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date acturalBegin;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date acturalEnd;

    private Integer assignerId;

    private String planType;

    private Integer workNumber;

    private Integer dayhours;

    private Integer weekDays;

    private List<WHSEmployee> members;
    private WHSProject project;

    public WHSSubProject getSubproject() {
        return subproject;
    }

    public WHSDevice getDevice() {
        return device;
    }

    public void setDevice(WHSDevice device) {
        this.device = device;
    }

    private WHSDevice device;

    public void setSubproject(WHSSubProject subproject) {
        this.subproject = subproject;
    }

    private WHSSubProject subproject;

    public List<WHSEmployee> getMembers() {
        return members;
    }

    public void setMembers(List<WHSEmployee> members) {
        this.members = members;
    }

    public WHSProject getProject() {
        return project;
    }

    public void setProject(WHSProject project) {
        this.project = project;
    }

    private static final long serialVersionUID = 1L;

    public WHSProjectPlan(Long id, Integer subprojectId, Date planBegin, Date planEnd, Date acturalBegin, Date acturalEnd, Integer assignerId, String planType, Integer workNumber, Integer dayhours, Integer weekDays) {
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