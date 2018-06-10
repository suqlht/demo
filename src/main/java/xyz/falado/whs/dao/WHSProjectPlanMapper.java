package xyz.falado.whs.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.falado.whs.model.WHSProjectPlan;
import xyz.falado.whs.model.WHSProjectPlanExample;

public interface WHSProjectPlanMapper {
    long countByExample(WHSProjectPlanExample example);

    int deleteByExample(WHSProjectPlanExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WHSProjectPlan record);

    int insertSelective(WHSProjectPlan record);

    List<WHSProjectPlan> selectByExample(WHSProjectPlanExample example);

    WHSProjectPlan selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WHSProjectPlan record, @Param("example") WHSProjectPlanExample example);

    int updateByExample(@Param("record") WHSProjectPlan record, @Param("example") WHSProjectPlanExample example);

    int updateByPrimaryKeySelective(WHSProjectPlan record);

    int updateByPrimaryKey(WHSProjectPlan record);
}