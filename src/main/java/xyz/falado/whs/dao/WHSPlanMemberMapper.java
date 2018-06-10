package xyz.falado.whs.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.falado.whs.model.WHSPlanMember;
import xyz.falado.whs.model.WHSPlanMemberExample;

public interface WHSPlanMemberMapper {
    long countByExample(WHSPlanMemberExample example);

    int deleteByExample(WHSPlanMemberExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WHSPlanMember record);

    int insertSelective(WHSPlanMember record);

    List<WHSPlanMember> selectByExample(WHSPlanMemberExample example);

    WHSPlanMember selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WHSPlanMember record, @Param("example") WHSPlanMemberExample example);

    int updateByExample(@Param("record") WHSPlanMember record, @Param("example") WHSPlanMemberExample example);

    int updateByPrimaryKeySelective(WHSPlanMember record);

    int updateByPrimaryKey(WHSPlanMember record);
}