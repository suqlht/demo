package xyz.falado.whs.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.falado.whs.model.WHSProjectLog;
import xyz.falado.whs.model.WHSProjectLogExample;

public interface WHSProjectLogMapper {
    long countByExample(WHSProjectLogExample example);

    int deleteByExample(WHSProjectLogExample example);

    int deleteByPrimaryKey(Long id);

    int insert(WHSProjectLog record);

    int insertSelective(WHSProjectLog record);

    List<WHSProjectLog> selectByExample(WHSProjectLogExample example);

    WHSProjectLog selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") WHSProjectLog record, @Param("example") WHSProjectLogExample example);

    int updateByExample(@Param("record") WHSProjectLog record, @Param("example") WHSProjectLogExample example);

    int updateByPrimaryKeySelective(WHSProjectLog record);

    int updateByPrimaryKey(WHSProjectLog record);
}