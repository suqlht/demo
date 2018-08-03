package xyz.falado.whs.model;

import java.io.Serializable;

public class WHSPlanMember implements Serializable {
    private Integer id;

    private Long planId;

    private Long employeeId;

    private Long executorId;

    private Integer groupId;

    private static final long serialVersionUID = 1L;

    public WHSPlanMember(Integer id, Long planId, Long employeeId, Long executorId, Integer groupId) {
        this.id = id;
        this.planId = planId;
        this.employeeId = employeeId;
        this.executorId = executorId;
        this.groupId = groupId;
    }

    public WHSPlanMember() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getplanId() {
        return planId;
    }

    public void setplanId(Long planId) {
        this.planId = planId;
    }

    public Long getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Long employeeId) {
        this.employeeId = employeeId;
    }

    public Long getExecutorId() {
        return executorId;
    }

    public void setExecutorId(Long executorId) {
        this.executorId = executorId;
    }

    public Integer getGroupId() {
        return groupId;
    }

    public void setGroupId(Integer groupId) {
        this.groupId = groupId;
    }
}