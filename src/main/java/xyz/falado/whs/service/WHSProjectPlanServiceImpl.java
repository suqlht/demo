package xyz.falado.whs.service;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ResponseBody;
import xyz.falado.whs.dao.WHSEmployeeMapper;
import xyz.falado.whs.dao.WHSPlanMemberMapper;
import xyz.falado.whs.dao.WHSProjectPlanMapper;
import xyz.falado.whs.model.*;

import javax.annotation.Resource;
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

    @Resource
    private WHSProjectPlanMapper mapper;
    @Resource
    private WHSPlanMemberMapper memberMapper;
    @Resource
    private WHSEmployeeMapper employeeMapper;
    @Override
    @Transactional
    public WHSProjectPlan createNew(WHSProjectPlan record) {
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();

        mapper.insert(record);
        WHSPlanMember member = new WHSPlanMember();
        member.setEmployeeId( ((XUser) subject.getPrincipal()).getId());
        member.setExecutorId(record.getMembers().get(0).getId());
        member.setplanId(record.getId());
        memberMapper.insert(member);
        return record;
    }

    @Override
    public WHSProjectPlan createUpdate(WHSProjectPlan record) {
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();

        mapper.updateByPrimaryKey(record);
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
}
