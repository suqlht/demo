package xyz.falado.whs.model;

import java.io.Serializable;

public class WHSSubProject implements Serializable {
    private Integer id;

    private Integer projectId;

    private Integer deviceId;

    private Integer deviceQuantity;

    private String remark;

    private Integer deviceOption;

    private static final long serialVersionUID = 1L;

    public WHSSubProject(Integer id, Integer projectId, Integer deviceId, Integer deviceQuantity, String remark, Integer deviceOption) {
        this.id = id;
        this.projectId = projectId;
        this.deviceId = deviceId;
        this.deviceQuantity = deviceQuantity;
        this.remark = remark;
        this.deviceOption = deviceOption;
    }

    public WHSSubProject() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
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

    public Integer getDeviceOption() {
        return deviceOption;
    }

    public void setDeviceOption(Integer deviceOption) {
        this.deviceOption = deviceOption;
    }
}