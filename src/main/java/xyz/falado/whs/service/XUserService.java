package xyz.falado.whs.service;

import xyz.falado.whs.model.WHSEmployee;
import xyz.falado.whs.model.WHSEmployeeExample;
import xyz.falado.whs.model.XUser;
import xyz.falado.whs.model.XUserExample;

import java.util.List;

public interface XUserService {
    public XUser addXUser(XUser user);
    public XUser findXUserByID(long id);
    public XUser findXUserByName(String name);
    XUser register(XUser user);

    public List<WHSEmployee> findEmployeeByExample(WHSEmployeeExample example);
}
