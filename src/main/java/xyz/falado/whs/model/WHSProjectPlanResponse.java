package xyz.falado.whs.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class WHSProjectPlanResponse implements Serializable {
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    private Long id;

    public List<WHSProjectPlan> getPlans() {
        return plans;
    }

    public void setPlans(List<WHSProjectPlan> plans) {
        this.plans = plans;
    }

    private List<WHSProjectPlan> plans;

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

    public WHSProject getProject() {
        return project;
    }

    public void setProject(WHSProject project) {
        this.project = project;
    }

    private static final long serialVersionUID = 1L;

    public List<WHSPlanAsset> getPlanAssets() {
        return planAssets;
    }

    public void setPlanAssets(List<WHSPlanAsset> planAssets) {
        this.planAssets = planAssets;
    }

    private List<WHSPlanAsset> planAssets;

    public WHSProjectPlanResponse() {
        super();
    }
    public WHSProjectPlanResponse(Long id) {
        this.id=id;
    }
}