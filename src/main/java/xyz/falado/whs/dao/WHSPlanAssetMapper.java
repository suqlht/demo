package xyz.falado.whs.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.falado.whs.model.WHSPlanAsset;
import xyz.falado.whs.model.WHSPlanAssetExample;

public interface WHSPlanAssetMapper {
    long countByExample(WHSPlanAssetExample example);

    int deleteByExample(WHSPlanAssetExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WHSPlanAsset record);

    int insertSelective(WHSPlanAsset record);

    List<WHSPlanAsset> selectByExample(WHSPlanAssetExample example);

    WHSPlanAsset selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WHSPlanAsset record, @Param("example") WHSPlanAssetExample example);

    int updateByExample(@Param("record") WHSPlanAsset record, @Param("example") WHSPlanAssetExample example);

    int updateByPrimaryKeySelective(WHSPlanAsset record);

    int updateByPrimaryKey(WHSPlanAsset record);
}