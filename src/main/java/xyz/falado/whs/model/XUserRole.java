package xyz.falado.whs.model;

import java.io.Serializable;

public class XUserRole implements Serializable {
    private Long uid;

    private Long rid;

    private static final long serialVersionUID = 1L;

    public XUserRole(Long uid, Long rid) {
        this.uid = uid;
        this.rid = rid;
    }

    public XUserRole() {
        super();
    }

    public Long getUid() {
        return uid;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }

    public Long getRid() {
        return rid;
    }

    public void setRid(Long rid) {
        this.rid = rid;
    }
}