package xyz.falado.whs.dao;

import org.springframework.stereotype.Repository;
import xyz.falado.whs.model.XUserRole;

@Repository("userDAO")
public interface XUserRoleMapper {
    int insert(XUserRole record);

    int insertSelective(XUserRole record);
}