package xyz.falado.whs.model;

import java.io.Serializable;
import java.util.Date;

public class WHSProjectLog implements Serializable {
    private Long id;

    private Long projectId;

    private String message;

    private Long createdby;

    private Integer level;

    private Date createdate;

    private static final long serialVersionUID = 1L;

    public WHSProjectLog(Long id, Long projectId, String message, Long createdby, Integer level, Date createdate) {
        this.id = id;
        this.projectId = projectId;
        this.message = message;
        this.createdby = createdby;
        this.level = level;
        this.createdate = createdate;
    }

    public WHSProjectLog() {
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

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }

    public Long getCreatedby() {
        return createdby;
    }

    public void setCreatedby(Long createdby) {
        this.createdby = createdby;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }
}