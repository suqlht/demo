package xyz.falado.whs.model;

import java.io.Serializable;

public class XPermission implements Serializable {
    private Long id;

    private String url;

    private String name;

    private static final long serialVersionUID = 1L;

    public XPermission(Long id, String url, String name) {
        this.id = id;
        this.url = url;
        this.name = name;
    }

    public XPermission() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}