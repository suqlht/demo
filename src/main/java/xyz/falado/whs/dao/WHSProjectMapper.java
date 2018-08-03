package xyz.falado.whs.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.falado.whs.model.WHSProject;
import xyz.falado.whs.model.WHSProjectExample;
import xyz.falado.whs.model.WHSProjectSubs;

public interface WHSProjectMapper {
    long countByExample(WHSProjectExample example);

    int deleteByExample(WHSProjectExample example);

    int deleteByPrimaryKey(Long id);
    int deleteInBatch(@Param("list")Long[] list, @Param("current_userid")Long current_userid);
    int updateStatusBatch(@Param("list")Long[] list, @Param("current_userid")Long current_userid);

    int insert(WHSProject record);


    WHSProjectSubs selectByProjectId(Long record);


    int insertSelective(WHSProject record);

    List<WHSProject> selectByExampleWithBLOBs(WHSProjectExample example);

    List<WHSProject> selectByExample(WHSProjectExample example);
    List<WHSProject> selectByKeyword(String keyword);


    WHSProject selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") WHSProject record, @Param("example") WHSProjectExample example);

    int updateByExampleWithBLOBs(@Param("record") WHSProject record, @Param("example") WHSProjectExample example);

    int updateByExample(@Param("record") WHSProject record, @Param("example") WHSProjectExample example);

    int updateByPrimaryKeySelective(WHSProject record);

    int updateByPrimaryKeyWithBLOBs(WHSProject record);

    int updateByPrimaryKey(WHSProject record);
}