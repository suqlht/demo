package xyz.falado.whs.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.falado.whs.model.WHSProcess;
import xyz.falado.whs.model.WHSProcessExample;

public interface WHSProcessMapper {
    long countByExample(WHSProcessExample example);

    int deleteByExample(WHSProcessExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WHSProcess record);

    int insertSelective(WHSProcess record);

    List<WHSProcess> selectByExample(WHSProcessExample example);

    WHSProcess selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WHSProcess record, @Param("example") WHSProcessExample example);

    int updateByExample(@Param("record") WHSProcess record, @Param("example") WHSProcessExample example);

    int updateByPrimaryKeySelective(WHSProcess record);

    int updateByPrimaryKey(WHSProcess record);
}