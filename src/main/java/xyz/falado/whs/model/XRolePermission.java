package xyz.falado.whs.model;

import java.io.Serializable;

public class XRolePermission implements Serializable {
    private Long rid;

    private Long pid;

    private static final long serialVersionUID = 1L;

    public XRolePermission(Long rid, Long pid) {
        this.rid = rid;
        this.pid = pid;
    }

    public XRolePermission() {
        super();
    }

    public Long getRid() {
        return rid;
    }

    public void setRid(Long rid) {
        this.rid = rid;
    }

    public Long getPid() {
        return pid;
    }

    public void setPid(Long pid) {
        this.pid = pid;
    }
}