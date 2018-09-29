package xyz.falado.whs.model;

import java.io.Serializable;
import java.util.Date;

public class WHSPlanAsset implements Serializable {
    private Long id;

    private String assetName;

    private Date planFinishTime;

    private Date acturalFinishTime;

    private Date deadlineTime;

    private Long subprojectId;

    private String status;

    private static final long serialVersionUID = 1L;

    public WHSPlanAsset(Long id, String assetName, Date planFinishTime, Date acturalFinishTime, Date deadlineTime, Long  subprojectId, String status) {
        this.id = id;
        this.assetName = assetName;
        this.planFinishTime = planFinishTime;
        this.acturalFinishTime = acturalFinishTime;
        this.deadlineTime = deadlineTime;
        this.subprojectId = subprojectId;
        this.status = status;
    }

    public WHSPlanAsset() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAssetName() {
        return assetName;
    }

    public void setAssetName(String assetName) {
        this.assetName = assetName == null ? null : assetName.trim();
    }

    public Date getPlanFinishTime() {
        return planFinishTime;
    }

    public void setPlanFinishTime(Date planFinishTime) {
        this.planFinishTime = planFinishTime;
    }

    public Date getActuralFinishTime() {
        return acturalFinishTime;
    }

    public void setActuralFinishTime(Date acturalFinishTime) {
        this.acturalFinishTime = acturalFinishTime;
    }

    public Date getDeadlineTime() {
        return deadlineTime;
    }

    public void setDeadlineTime(Date deadlineTime) {
        this.deadlineTime = deadlineTime;
    }

    public Long getSubprojectId() {
        return subprojectId;
    }

    public void setSubprojectId(Long subprojectId) {
        this.subprojectId = subprojectId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }
}