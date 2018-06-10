package xyz.falado.whs.model;

import java.io.Serializable;

public class WHSPlanMember implements Serializable {
    private Integer id;

    private Integer subprojectId;

    private Integer employeeId;

    private Integer executorId;

    private Integer groupId;

    private static final long serialVersionUID = 1L;

    public WHSPlanMember(Integer id, Integer subprojectId, Integer employeeId, Integer executorId, Integer groupId) {
        this.id = id;
        this.subprojectId = subprojectId;
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

    public Integer getSubprojectId() {
        return subprojectId;
    }

    public void setSubprojectId(Integer subprojectId) {
        this.subprojectId = subprojectId;
    }

    public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public Integer getExecutorId() {
        return executorId;
    }

    public void setExecutorId(Integer executorId) {
        this.executorId = executorId;
    }

    public Integer getGroupId() {
        return groupId;
    }

    public void setGroupId(Integer groupId) {
        this.groupId = groupId;
    }
}