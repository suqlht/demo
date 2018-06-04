package xyz.falado.whs.dao;

import xyz.falado.whs.model.XRolePermission;

public interface XRolePermissionMapper {
    int insert(XRolePermission record);

    int insertSelective(XRolePermission record);
}