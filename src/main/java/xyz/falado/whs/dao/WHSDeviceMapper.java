package xyz.falado.whs.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.falado.whs.model.WHSDevice;
import xyz.falado.whs.model.WHSDeviceExample;

public interface WHSDeviceMapper {
    long countByExample(WHSDeviceExample example);

    int deleteByExample(WHSDeviceExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WHSDevice record);

    int insertSelective(WHSDevice record);

    List<WHSDevice> selectByExample(WHSDeviceExample example);

    List<WHSDevice> selectByKeyWord(@Param("record") WHSDevice record);


    WHSDevice selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WHSDevice record, @Param("example") WHSDeviceExample example);

    int updateByExample(@Param("record") WHSDevice record, @Param("example") WHSDeviceExample example);

    int updateByPrimaryKeySelective(WHSDevice record);

    int updateByPrimaryKey(WHSDevice record);


}