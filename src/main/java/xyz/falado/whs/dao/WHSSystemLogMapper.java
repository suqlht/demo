package xyz.falado.whs.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.falado.whs.model.WHSSystemLog;
import xyz.falado.whs.model.WHSSystemLogExample;

public interface WHSSystemLogMapper {
    long countByExample(WHSSystemLogExample example);

    int deleteByExample(WHSSystemLogExample example);

    int deleteByPrimaryKey(Long id);

    int insert(WHSSystemLog record);

    int insertSelective(WHSSystemLog record);

    List<WHSSystemLog> selectByExampleWithBLOBs(WHSSystemLogExample example);

    List<WHSSystemLog> selectByExample(WHSSystemLogExample example);

    WHSSystemLog selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") WHSSystemLog record, @Param("example") WHSSystemLogExample example);

    int updateByExampleWithBLOBs(@Param("record") WHSSystemLog record, @Param("example") WHSSystemLogExample example);

    int updateByExample(@Param("record") WHSSystemLog record, @Param("example") WHSSystemLogExample example);

    int updateByPrimaryKeySelective(WHSSystemLog record);

    int updateByPrimaryKeyWithBLOBs(WHSSystemLog record);

    int updateByPrimaryKey(WHSSystemLog record);
}