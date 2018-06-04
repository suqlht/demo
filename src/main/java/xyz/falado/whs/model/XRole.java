package xyz.falado.whs.model;

import java.io.Serializable;

public class XRole implements Serializable {
    private Long id;

    private String name;

    private String type;

    private static final long serialVersionUID = 1L;

    public XRole(Long id, String name, String type) {
        this.id = id;
        this.name = name;
        this.type = type;
    }

    public XRole() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }
}