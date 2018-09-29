package xyz.falado.whs.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import xyz.falado.whs.dao.WHSProjectMapper;
import xyz.falado.whs.dao.WHSProjectPlanMapper;
import xyz.falado.whs.dao.WHSSubProjectMapper;
import xyz.falado.whs.model.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * @ Author     ：apple.
 * @ Date       ：2018/6/20
 * @ Description：
 * @ Modified By：
 * @Version: $
 */
@Service(value = "projectService")

public class WHSProjectServiceImpl implements WHSProjectService {

    private final static Logger logger = LoggerFactory.getLogger(WHSProjectServiceImpl.class);
    @Resource
    private WHSProjectMapper mapper;
    @Resource
    private WHSSubProjectMapper submapper;
    @Resource
    private WHSProjectPlanMapper planmapper;

    @Override
    @Transactional
    public WHSProjectSubs createNew(WHSProjectSubs projectSubs) {
        projectSubs.getProject().setProjectStatus("新建");
        mapper.insert(projectSubs.getProject());
        submapper.insertBatchSubs(projectSubs.getProject().getId(), projectSubs.getSubprojects());

        WHSSubProjectExample example = new WHSSubProjectExample();
        example.createCriteria().andProjectIdEqualTo(projectSubs.getProject().getId());
        List<WHSSubProject> subProjects = submapper.selectByExample(example);
        logger.info("newsubs:{}",subProjects);
        //init plans
        planmapper.insertBatchPlans(subProjects);
        return projectSubs;
    }
    @Override
    @Transactional
    public int startProject(Long[] ids, Long current_userid) {
        mapper.updateStatusBatch(ids, current_userid);
        return 0;
    }

    @Override
    public WHSProjectSubs findProjectSubs(Long id) {
        return mapper.selectByProjectId(id);
    }

    @Override
    public PageInfo<WHSProject> findPageByExample(WHSProjectExample example, int pageSize, int currentPage) {
        PageHelper.startPage(currentPage, pageSize);

        example.setOrderByClause("id desc");
        List<WHSProject> results = mapper.selectByExample(example);
        PageInfo<WHSProject> pageInfo = new PageInfo<>(results);

        return pageInfo;
    }

    @Override
    public PageInfo<WHSProject> findPageByKeyword(String kw, int pageSize, int currentPage) {
        PageHelper.startPage(currentPage, pageSize);

        List<WHSProject> results = mapper.selectByKeyword("%" + kw + "%");
        PageInfo<WHSProject> pageInfo = new PageInfo<>(results);

        return pageInfo;
    }

    @Override
    @Transactional
    public int deleteInBatch(Long[] ids, Long current_userid) {

        mapper.deleteInBatch(ids, current_userid);
        WHSSubProjectExample example = new WHSSubProjectExample();
        WHSSubProjectExample.Criteria criteria = example.createCriteria();

        logger.info("ids:{}",ids);
        criteria.andProjectIdIn(java.util.Arrays.asList(ids));
        submapper.deleteByExample(example);
        return 0;
    }

    @Override
    @Transactional
    public WHSProjectSubs createUpdate(WHSProjectSubs projectSubs) {

        ArrayList<Long> updateSubIds = new ArrayList<Long>();
        ArrayList<WHSSubProject> newSubList = new ArrayList<WHSSubProject>();

        //保存项目基本信息
        mapper.updateByPrimaryKeySelective(projectSubs.getProject());


        for (WHSSubProject s : projectSubs.getSubprojects()) {
            if (s.getId() == null) {
                //add
                newSubList.add(s);
            } else {
                //update
                submapper.updateByPrimaryKeySelective(s);
                updateSubIds.add(s.getId());
            }
        }
        //批量删除
        WHSSubProjectExample example = new WHSSubProjectExample();
        WHSSubProjectExample.Criteria criteria = example.createCriteria();

        logger.info("ids:{}",projectSubs.getProject().getId());

        criteria.andProjectIdEqualTo(projectSubs.getProject().getId());
        if(updateSubIds.size()>0) {
            criteria.andIdNotIn(updateSubIds);
        }
        submapper.deleteByExample(example);

        //批量添加
        if(newSubList.size()>0) {
            submapper.insertBatchSubs(projectSubs.getProject().getId(), newSubList);
        }


        return projectSubs;
    }

    @Override
    public WHSProject Update(WHSProject project) {
        mapper.updateByPrimaryKeySelective(project);
        return project;
    }

    @Override
    public WHSSubProject updateSubProject(WHSSubProject subProject) {
        submapper.updateByPrimaryKeySelective(subProject);
        return subProject;
    }

    @Override
    public WHSSubProject createSubProject(WHSSubProject subProject) {
        submapper.insert(subProject);
        return subProject;
    }

    @Override
    public int deleteSubProject(List<Long> ids, Long projectid) {
        WHSSubProjectExample example = new WHSSubProjectExample();
        example.createCriteria().andProjectIdEqualTo(projectid).andIdIn(ids);
        return submapper.deleteByExample(example);
    }

}
