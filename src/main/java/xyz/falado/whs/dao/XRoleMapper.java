package xyz.falado.whs.dao;

import xyz.falado.whs.model.XRole;

public interface XRoleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(XRole record);

    int insertSelective(XRole record);

    XRole selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(XRole record);

    int updateByPrimaryKey(XRole record);
}