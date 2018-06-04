package xyz.falado.whs.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class WHSTicket implements Serializable {
    private Long id;

    private Long projectId;

    private Integer employeeId;

    private Integer createdBy;

    private Date createdDate;

    private BigDecimal workHours;

    private Date workDay;

    private Integer employeeGroup;

    private Integer statusId;

    private Integer process;

    private static final long serialVersionUID = 1L;

    public WHSTicket(Long id, Long projectId, Integer employeeId, Integer createdBy, Date createdDate, BigDecimal workHours, Date workDay, Integer employeeGroup, Integer statusId, Integer process) {
        this.id = id;
        this.projectId = projectId;
        this.employeeId = employeeId;
        this.createdBy = createdBy;
        this.createdDate = createdDate;
        this.workHours = workHours;
        this.workDay = workDay;
        this.employeeGroup = employeeGroup;
        this.statusId = statusId;
        this.process = process;
    }

    public WHSTicket() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getProjectId() {
        return projectId;
    }

    public void setProjectId(Long projectId) {
        this.projectId = projectId;
    }

    public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public Integer getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(Integer createdBy) {
        this.createdBy = createdBy;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public BigDecimal getWorkHours() {
        return workHours;
    }

    public void setWorkHours(BigDecimal workHours) {
        this.workHours = workHours;
    }

    public Date getWorkDay() {
        return workDay;
    }

    public void setWorkDay(Date workDay) {
        this.workDay = workDay;
    }

    public Integer getEmployeeGroup() {
        return employeeGroup;
    }

    public void setEmployeeGroup(Integer employeeGroup) {
        this.employeeGroup = employeeGroup;
    }

    public Integer getStatusId() {
        return statusId;
    }

    public void setStatusId(Integer statusId) {
        this.statusId = statusId;
    }

    public Integer getProcess() {
        return process;
    }

    public void setProcess(Integer process) {
        this.process = process;
    }
}