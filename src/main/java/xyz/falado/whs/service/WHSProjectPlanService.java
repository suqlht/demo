package xyz.falado.whs.service;

import com.github.pagehelper.PageInfo;
import xyz.falado.whs.model.WHSProject;
import xyz.falado.whs.model.WHSProjectExample;
import xyz.falado.whs.model.WHSProjectPlan;
import xyz.falado.whs.model.WHSProjectSubs;

public interface WHSProjectPlanService {


    public WHSProjectPlan createNew(WHSProjectPlan record);
    public WHSProjectPlan createUpdate(WHSProjectPlan record);

}
