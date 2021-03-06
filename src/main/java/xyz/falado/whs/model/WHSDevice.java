package xyz.falado.whs.model;

import org.hibernate.validator.constraints.NotEmpty;

import java.io.Serializable;

public class WHSDevice implements Serializable {
    private Integer id;

    @NotEmpty
    private String deviceName;

    private String deviceCode;

    @NotEmpty
    private String model;

    private String spec;

    private String param;

    private String remark;

    private Integer mechanicalHours;

    private Integer electricalHours;

    private Integer otherHours;

    private static final long serialVersionUID = 1L;

    public WHSDevice(Integer id, String deviceName, String deviceCode, String model, String spec, String param, String remark, Integer mechanicalHours, Integer electricalHours, Integer otherHours) {
        this.id = id;
        this.deviceName = deviceName;
        this.deviceCode = deviceCode;
        this.model = model;
        this.spec = spec;
        this.param = param;
        this.remark = remark;
        this.mechanicalHours = mechanicalHours;
        this.electricalHours = electricalHours;
        this.otherHours = otherHours;
    }

    public WHSDevice() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName == null ? null : deviceName.trim();
    }

    public String getDeviceCode() {
        return deviceCode;
    }

    public void setDeviceCode(String deviceCode) {
        this.deviceCode = deviceCode == null ? null : deviceCode.trim();
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model == null ? null : model.trim();
    }

    public String getSpec() {
        return spec;
    }

    public void setSpec(String spec) {
        this.spec = spec == null ? null : spec.trim();
    }

    public String getParam() {
        return param;
    }

    public void setParam(String param) {
        this.param = param == null ? null : param.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

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

    public Integer getOtherHours() {
        return otherHours;
    }

    public void setOtherHours(Integer otherHours) {
        this.otherHours = otherHours;
    }
}