package xyz.falado.whs.model;

import java.io.Serializable;

public class WHSDeviceProcess implements Serializable {
    private Integer id;

    private Integer deviceId;

    private Integer processId;

    private Integer priority;

    private Integer workhours;

    private Integer preProcess;

    private Integer postProcess;

    private Byte active;

    private Integer limitWorkhours;

    private static final long serialVersionUID = 1L;

    public WHSDeviceProcess(Integer id, Integer deviceId, Integer processId, Integer priority, Integer workhours, Integer preProcess, Integer postProcess, Byte active, Integer limitWorkhours) {
        this.id = id;
        this.deviceId = deviceId;
        this.processId = processId;
        this.priority = priority;
        this.workhours = workhours;
        this.preProcess = preProcess;
        this.postProcess = postProcess;
        this.active = active;
        this.limitWorkhours = limitWorkhours;
    }

    public WHSDeviceProcess() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Integer deviceId) {
        this.deviceId = deviceId;
    }

    public Integer getProcessId() {
        return processId;
    }

    public void setProcessId(Integer processId) {
        this.processId = processId;
    }

    public Integer getPriority() {
        return priority;
    }

    public void setPriority(Integer priority) {
        this.priority = priority;
    }

    public Integer getWorkhours() {
        return workhours;
    }

    public void setWorkhours(Integer workhours) {
        this.workhours = workhours;
    }

    public Integer getPreProcess() {
        return preProcess;
    }

    public void setPreProcess(Integer preProcess) {
        this.preProcess = preProcess;
    }

    public Integer getPostProcess() {
        return postProcess;
    }

    public void setPostProcess(Integer postProcess) {
        this.postProcess = postProcess;
    }

    public Byte getActive() {
        return active;
    }

    public void setActive(Byte active) {
        this.active = active;
    }

    public Integer getLimitWorkhours() {
        return limitWorkhours;
    }

    public void setLimitWorkhours(Integer limitWorkhours) {
        this.limitWorkhours = limitWorkhours;
    }
}