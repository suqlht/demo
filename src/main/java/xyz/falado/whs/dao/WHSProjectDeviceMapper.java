package xyz.falado.whs.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.falado.whs.model.WHSProjectDevice;
import xyz.falado.whs.model.WHSProjectDeviceExample;

public interface WHSProjectDeviceMapper {
    long countByExample(WHSProjectDeviceExample example);

    int deleteByExample(WHSProjectDeviceExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WHSProjectDevice record);

    int insertSelective(WHSProjectDevice record);

    List<WHSProjectDevice> selectByExample(WHSProjectDeviceExample example);

    WHSProjectDevice selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WHSProjectDevice record, @Param("example") WHSProjectDeviceExample example);

    int updateByExample(@Param("record") WHSProjectDevice record, @Param("example") WHSProjectDeviceExample example);

    int updateByPrimaryKeySelective(WHSProjectDevice record);

    int updateByPrimaryKey(WHSProjectDevice record);
}