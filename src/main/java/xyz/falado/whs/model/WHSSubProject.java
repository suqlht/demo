package xyz.falado.whs.model;

import java.io.Serializable;

public class WHSSubProject implements Serializable {
    private Long id;

    private Long projectId;

    private Integer deviceId;

    private Integer deviceQuantity;

    private String remark;

    public String getSubProjectId() {
        return subProjectId;
    }

    public void setSubProjectId(String subProjectId) {
        this.subProjectId = subProjectId;
    }

    private String subProjectId;

    private String deviceSpec;
    private Integer mechanicalHours;
    private Integer electricalHours;

    public Integer getTotalMechanicalHours() {
        return totalMechanicalHours;
    }

    public void setTotalMechanicalHours(Integer totalMechanicalHours) {
        this.totalMechanicalHours = totalMechanicalHours;
    }

    public Integer getTotalElectricalHours() {
        return totalElectricalHours;
    }

    public void setTotalElectricalHours(Integer totalElectricalHours) {
        this.totalElectricalHours = totalElectricalHours;
    }

    private Integer totalMechanicalHours;
    private Integer totalElectricalHours;
    public WHSDevice getDevice() {
        return device;
    }

    public void setDevice(WHSDevice device) {
        this.device = device;
    }

    private WHSDevice device;

    public Integer getMechanicalHours() {
        return mechanicalHours;
    }

    public void setMechanicalHours(Integer mechanicalHours) {
        this.mechanicalHours = mechanicalHours;
    }

    public Integer getElectricalHours() {
        return electricalHours;
    }

    public void setElectricalHours(Integer electricalHours) {
        this.electricalHours = electricalHours;
    }

    private static final long serialVersionUID = 1L;

    public WHSSubProject(Long id, Long projectId, Integer deviceId, Integer deviceQuantity, String remark, String deviceSpec) {
        this.id = id;
        this.projectId = projectId;
        this.deviceId = deviceId;
        this.deviceQuantity = deviceQuantity;
        this.remark = remark;
        this.deviceSpec = deviceSpec;
    }

    public WHSSubProject() {
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

    public Integer getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Integer deviceId) {
        this.deviceId = deviceId;
    }

    public Integer getDeviceQuantity() {
        return deviceQuantity;
    }

    public void setDeviceQuantity(Integer deviceQuantity) {
        this.deviceQuantity = deviceQuantity;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getDeviceSpec() {
        return deviceSpec;
    }

    public void setDeviceSpec(String deviceSpec) {
        this.deviceSpec = deviceSpec;
    }
}