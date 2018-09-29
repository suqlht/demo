package xyz.falado.whs.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import xyz.falado.whs.model.*;

public interface WHSProjectPlanMapper {
    long countByExample(WHSProjectPlanExample example);

    int deleteByExample(WHSProjectPlanExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WHSProjectPlan record);

    int insertSelective(WHSProjectPlan record);

    List<WHSProjectPlan> selectByExample(WHSProjectPlanExample example);

    List<HashMap> selectMechanicalPlan(String keyword);
    List<WHSProjectPlanResponse> selectElectricalPlan(Map condition);
    List<WHSProjectPlanResponse> selectPurchasePlan(Map condition);

    long selectCountProjectPlan(Map condition);

    WHSProjectPlan selectByPrimaryKey(Long id);
    WHSProjectPlanResponse selectPlanById(Long id);

    int updateByExampleSelective(@Param("record") WHSProjectPlan record, @Param("example") WHSProjectPlanExample example);

    int updateByExample(@Param("record") WHSProjectPlan record, @Param("example") WHSProjectPlanExample example);

    int updateByPrimaryKeySelective(WHSProjectPlan record);

    int updateByPrimaryKey(WHSProjectPlan record);


    int insertBatchPlans(@Param("list") List<WHSSubProject> records);

    List<WHSProjectPlanResponse> selectManufacturePlan(HashMap condition);
}