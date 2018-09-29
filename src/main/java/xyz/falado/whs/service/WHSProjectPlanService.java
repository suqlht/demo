package xyz.falado.whs.service;

import com.github.pagehelper.PageInfo;
import xyz.falado.whs.model.*;

import java.util.HashMap;
import java.util.List;

public interface WHSProjectPlanService {


    public WHSProjectPlan createNew(WHSProjectPlan record);
    public WHSProjectPlan createUpdate(WHSProjectPlan record);

    public Long queryPlanCount(String keyword);

    public PageInfo<HashMap> findMechanicalPlans(String keyword, Integer pageSize, Integer pageIndex);
    public List<WHSProjectPlanResponse> findElectricalPlans(String keyword, Integer pageSize, Integer pageIndex);
    public List<WHSProjectPlanResponse> findPurchasePlans(String keyword, Integer pageSize, Integer pageIndex);
    public List<WHSProjectPlanResponse> findManufacturePlans(String keyword, Integer pageSize, Integer pageIndex);


    public WHSProjectPlanResponse findPlanResponse(Long id);

    public WHSProjectPlanResponse updatePurchasePlan(WHSProjectPlanResponse plan);
}
