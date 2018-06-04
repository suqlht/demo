package xyz.falado.whs.service;

import xyz.falado.whs.model.XUser;

public interface XUserService {
    public XUser addXUser(XUser user);
    public XUser findXUserByID(long id);
    public XUser findXUserByName(String name);

    XUser register(XUser user);
}
