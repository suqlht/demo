package xyz.falado.whs.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.util.StringUtil;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import xyz.falado.whs.controller.PlanController;
import xyz.falado.whs.dao.WHSEmployeeMapper;
import xyz.falado.whs.dao.WHSPlanAssetMapper;
import xyz.falado.whs.dao.WHSPlanMemberMapper;
import xyz.falado.whs.dao.WHSProjectPlanMapper;
import xyz.falado.whs.model.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * @ Author     ：apple.
 * @ Date       ：2018/6/30
 * @ Description：
 * @ Modified By：
 * @Version: $
 */
@Service
public class WHSProjectPlanServiceImpl implements WHSProjectPlanService {

    private final static Logger logger = LoggerFactory.getLogger(PlanController.class);

    @Resource
    private WHSPlanMemberMapper memberMapper;
    @Resource
    private WHSEmployeeMapper employeeMapper;
    @Resource
    private WHSProjectPlanMapper planmapper;

    @Resource
    private WHSPlanAssetMapper planAssetmapper;


    @Override
    @Transactional
    public WHSProjectPlan createNew(WHSProjectPlan record) {
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();

        planmapper.insert(record);
        WHSPlanMember member = new WHSPlanMember();
        member.setEmployeeId( ((XUser) subject.getPrincipal()).getId());
        member.setExecutorId(record.getMembers().get(0).getId());
        member.setplanId(record.getId());
        memberMapper.insert(member);
        return record;
    }

    @Override
    @Transactional
    public WHSProjectPlan createUpdate(WHSProjectPlan record) {

        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();
        WHSProjectPlan plan = planmapper.selectByPrimaryKey(record.getId());
        if(plan==null){
            return null;
        }
        plan.setPlanEnd(record.getPlanEnd());
        planmapper.updateByPrimaryKey(plan);
        WHSPlanMember pm = new WHSPlanMember();
        pm.setplanId(record.getId());
        pm.setExecutorId(record.getMembers().get(0).getId());
        pm.setEmployeeId( ((XUser) subject.getPrincipal()).getId());

        WHSEmployee employee = employeeMapper.selectByPrimaryKey(record.getMembers().get(0).getId());

        pm.setGroupId(employee.getGroupId());
        WHSPlanMemberExample example = new WHSPlanMemberExample();
        WHSPlanMemberExample.Criteria criteria = example.createCriteria();
        criteria.andPlanIdEqualTo(record.getId());
        List<WHSPlanMember>  planMembers = memberMapper.selectByExample(example);
        if(planMembers.size()>0){
            pm.setId(planMembers.get(0).getId());
            memberMapper.updateByPrimaryKey(pm);
        }else{
            memberMapper.insert(pm);
        }
        return record;
    }

    @Override
    public Long queryPlanCount(String keyword) {

        HashMap condition = new HashMap();
        if(StringUtils.isEmpty(keyword)){
            condition.put("keyword",null);
        }else{
            condition.put("keyword","%" + keyword + "%");
        }
        logger.info("queryCount:{}",condition);
        return planmapper.selectCountProjectPlan(condition);
    }

    @Override
    public PageInfo<HashMap> findMechanicalPlans(String keyword, Integer pageSize, Integer currentPage) {
        if (pageSize == null) {
            pageSize = 10;

        }
        if (currentPage == null) {
            currentPage = 1;

        }

        PageHelper.startPage(currentPage, pageSize);
        if(StringUtils.isEmpty(keyword)){
            keyword = null;
        }else{
            keyword = "%" + keyword + "%";
        }
        List<HashMap> results = planmapper.selectMechanicalPlan(keyword);
        PageInfo<HashMap> pageInfo = new PageInfo<>(results);

        return pageInfo;
    }

    @Override
    public List<WHSProjectPlanResponse> findElectricalPlans(String keyword, Integer pageSize, Integer currentPage) {
        if (pageSize == null) {
            pageSize = 10;

        }
        if (currentPage == null) {
            currentPage = 1;

        }

        HashMap condition = new HashMap<String,Object>();

        if(StringUtils.isEmpty(keyword)){
            keyword = null;
        }else{
            keyword = "%" + keyword + "%";

        }
        condition.put("keyword",keyword);
        condition.put("pageSize",pageSize);
        condition.put("offset",(currentPage -1) * pageSize);

        logger.info("query:selectElectricalPlan,{}",condition);
        List<WHSProjectPlanResponse> results = planmapper.selectElectricalPlan(condition);

        return results;
    }

    @Override
    public List<WHSProjectPlanResponse> findPurchasePlans(String keyword,  Integer pageSize, Integer currentPage) {
        if (pageSize == null) {
            pageSize = 10;

        }
        if (currentPage == null) {
            currentPage = 1;

        }

        HashMap condition = new HashMap<String,Object>();

        if(StringUtils.isEmpty(keyword)){
            keyword = null;
        }else{
            keyword = "%" + keyword + "%";

        }
        condition.put("keyword",keyword);
        condition.put("pageSize",pageSize);
        condition.put("offset",(currentPage -1) * pageSize);

        logger.info("query:selectElectricalPlan,{}",condition);
        List<WHSProjectPlanResponse> results = planmapper.selectPurchasePlan(condition);

        return results;
    }

    @Override
    public List<WHSProjectPlanResponse> findManufacturePlans(String keyword, Integer pageSize, Integer currentPage) {
        if (pageSize == null) {
            pageSize = 10;

        }
        if (currentPage == null) {
            currentPage = 1;

        }

        HashMap condition = new HashMap<String,Object>();

        if(StringUtils.isEmpty(keyword)){
            keyword = null;
        }else{
            keyword = "%" + keyword + "%";

        }
        condition.put("keyword",keyword);
        condition.put("pageSize",pageSize);
        condition.put("offset",(currentPage -1) * pageSize);

        logger.info("query:selectElectricalPlan,{}",condition);
        List<WHSProjectPlanResponse> results = planmapper.selectManufacturePlan(condition);

        return results;
    }

    @Override
    public WHSProjectPlanResponse findPlanResponse(Long id) {

        return planmapper.selectPlanById(id);
    }

    @Override
    public WHSProjectPlanResponse updatePurchasePlan(WHSProjectPlanResponse plan) {

        ArrayList<Long> updateSubIds = new ArrayList<Long>();
        ArrayList<WHSPlanAsset> newSubList = new ArrayList<WHSPlanAsset>();

        //保存plan基本信息
        WHSProjectPlan purchase_plan = plan.getPlans().get(0);
        logger.info("purchase_plan:{}",purchase_plan);
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();
        XUser user = (XUser) subject.getPrincipal();
        purchase_plan.setAssignerId(user.getId());
        planmapper.updateByPrimaryKeySelective(purchase_plan);

        logger.info("getPlanAssets:{}",plan.getPlanAssets().size());

        for (WHSPlanAsset s : plan.getPlanAssets()) {
            if (s.getId() == null) {
                //add
                logger.info("add:{}",s);

                newSubList.add(s);
            } else {
                //update
                logger.info("update:{}",s);

                planAssetmapper.updateByPrimaryKeySelective(s);
                updateSubIds.add(s.getId());
            }
        }
        //批量删除

        logger.info("delete:{}",purchase_plan.getSubprojectId());

        WHSPlanAssetExample example = new WHSPlanAssetExample();
        WHSPlanAssetExample.Criteria criteria = example.createCriteria();

        criteria.andSubprojectIdEqualTo(purchase_plan.getSubprojectId());
        if(updateSubIds.size()>0) {
            criteria.andIdNotIn(updateSubIds);
        }
        planAssetmapper.deleteByExample(example);

        logger.info("add:{}",newSubList);

        //批量添加
        if(newSubList.size()>0) {
            planAssetmapper.insertBatchAssets(purchase_plan.getSubprojectId(), newSubList);
        }

        return plan;
    }


}
