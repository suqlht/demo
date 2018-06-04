package xyz.falado.whs.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.falado.whs.model.WHSEmployeeGroup;
import xyz.falado.whs.model.WHSEmployeeGroupExample;

public interface WHSEmployeeGroupMapper {
    long countByExample(WHSEmployeeGroupExample example);

    int deleteByExample(WHSEmployeeGroupExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WHSEmployeeGroup record);

    int insertSelective(WHSEmployeeGroup record);

    List<WHSEmployeeGroup> selectByExampleWithBLOBs(WHSEmployeeGroupExample example);

    List<WHSEmployeeGroup> selectByExample(WHSEmployeeGroupExample example);

    WHSEmployeeGroup selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WHSEmployeeGroup record, @Param("example") WHSEmployeeGroupExample example);

    int updateByExampleWithBLOBs(@Param("record") WHSEmployeeGroup record, @Param("example") WHSEmployeeGroupExample example);

    int updateByExample(@Param("record") WHSEmployeeGroup record, @Param("example") WHSEmployeeGroupExample example);

    int updateByPrimaryKeySelective(WHSEmployeeGroup record);

    int updateByPrimaryKeyWithBLOBs(WHSEmployeeGroup record);

    int updateByPrimaryKey(WHSEmployeeGroup record);
}