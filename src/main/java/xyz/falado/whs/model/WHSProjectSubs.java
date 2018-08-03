package xyz.falado.whs.model;

import java.io.Serializable;
import java.util.List;

public class WHSProjectSubs implements Serializable {

    private Long projectId;


    public WHSProject getProject() {
        return project;
    }

    public void setProject(WHSProject project) {
        this.project = project;
    }

    private WHSProject project;

    public List<WHSSubProject> getSubprojects() {
        return subprojects;
    }

    public void setSubprojects(List<WHSSubProject> subprojects) {
        this.subprojects = subprojects;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    private List<WHSSubProject> subprojects;


    private static final long serialVersionUID = 1L;

    public WHSProjectSubs(Integer id, Long projectId, List<WHSSubProject> subprojects) {
        this.projectId = projectId;
        this.subprojects = subprojects;
    }

    public WHSProjectSubs() {
        super();
    }



    public Long getProjectId() {
        return projectId;
    }

    public void setProjectId(Long projectId) {
        this.projectId = projectId;
    }


}