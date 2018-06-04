package xyz.falado.whs.dao;

import xyz.falado.whs.model.XUser;
import xyz.falado.whs.model.XUserExample;

import java.util.List;

public interface XUserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(XUser record);

    int insertSelective(XUser record);

    XUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(XUser record);

    int updateByPrimaryKey(XUser record);

    List<XUser> selectByExample(XUserExample example);
}