package xyz.falado.whs.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.falado.whs.model.WHSSubProject;
import xyz.falado.whs.model.WHSSubProjectExample;

public interface WHSSubProjectMapper {
    long countByExample(WHSSubProjectExample example);

    int deleteByExample(WHSSubProjectExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WHSSubProject record);

    int insertSelective(WHSSubProject record);

    List<WHSSubProject> selectByExample(WHSSubProjectExample example);

    WHSSubProject selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WHSSubProject record, @Param("example") WHSSubProjectExample example);

    int updateByExample(@Param("record") WHSSubProject record, @Param("example") WHSSubProjectExample example);

    int updateByPrimaryKeySelective(WHSSubProject record);

    int updateByPrimaryKey(WHSSubProject record);
}