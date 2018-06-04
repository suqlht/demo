package xyz.falado.whs.dao;

import xyz.falado.whs.model.XPermission;

public interface XPermissionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(XPermission record);

    int insertSelective(XPermission record);

    XPermission selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(XPermission record);

    int updateByPrimaryKey(XPermission record);
}