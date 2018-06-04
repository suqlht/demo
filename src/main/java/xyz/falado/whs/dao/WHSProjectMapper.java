package xyz.falado.whs.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.falado.whs.model.WHSProject;
import xyz.falado.whs.model.WHSProjectExample;

public interface WHSProjectMapper {
    long countByExample(WHSProjectExample example);

    int deleteByExample(WHSProjectExample example);

    int deleteByPrimaryKey(Long id);

    int insert(WHSProject record);

    int insertSelective(WHSProject record);

    List<WHSProject> selectByExampleWithBLOBs(WHSProjectExample example);

    List<WHSProject> selectByExample(WHSProjectExample example);

    WHSProject selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") WHSProject record, @Param("example") WHSProjectExample example);

    int updateByExampleWithBLOBs(@Param("record") WHSProject record, @Param("example") WHSProjectExample example);

    int updateByExample(@Param("record") WHSProject record, @Param("example") WHSProjectExample example);

    int updateByPrimaryKeySelective(WHSProject record);

    int updateByPrimaryKeyWithBLOBs(WHSProject record);

    int updateByPrimaryKey(WHSProject record);
}