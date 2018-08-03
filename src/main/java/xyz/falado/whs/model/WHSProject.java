package xyz.falado.whs.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class WHSProject implements Serializable {
    private Long id;

    private String projectCode;

    private String customerName;

    private String projectType;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date deliveryDate;

    private String projectStatus;

    private Long createdBy;

    private Date createdate;

    private Date modifydate;

    private Integer projectOwner;

    private String projectPhase;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date orderDate;
    private String createdUser;

    public String getCreatedUser() {
        return createdUser;
    }

    public void setCreatedUser(String createdUser) {
        this.createdUser = createdUser;
    }

    private String assuranceBegin;

    private String assuranceDuration;

    private String assuranceRemark;

    private String reserve;

    private String remark;

    private static final long serialVersionUID = 1L;

    public WHSProject(Long id, String projectCode, String customerName, String projectType, Date deliveryDate, String projectStatus, Long createdBy, Date createdate, Date modifydate, Integer projectOwner, String projectPhase, Date orderDate, String assuranceBegin, String assuranceDuration, String assuranceRemark, String reserve) {
        this.id = id;
        this.projectCode = projectCode;
        this.customerName = customerName;
        this.projectType = projectType;
        this.deliveryDate = deliveryDate;
        this.projectStatus = projectStatus;
        this.createdBy = createdBy;
        this.createdate = createdate;
        this.modifydate = modifydate;
        this.projectOwner = projectOwner;
        this.projectPhase = projectPhase;
        this.orderDate = orderDate;
        this.assuranceBegin = assuranceBegin;
        this.assuranceDuration = assuranceDuration;
        this.assuranceRemark = assuranceRemark;
        this.reserve = reserve;
    }

    public WHSProject(Long id, String projectCode, String customerName, String projectType, Date deliveryDate, String projectStatus, Long createdBy, Date createdate, Date modifydate, Integer projectOwner, String projectPhase, Date orderDate, String assuranceBegin, String assuranceDuration, String assuranceRemark, String reserve, String remark) {
        this.id = id;
        this.projectCode = projectCode;
        this.customerName = customerName;
        this.projectType = projectType;
        this.deliveryDate = deliveryDate;
        this.projectStatus = projectStatus;
        this.createdBy = createdBy;
        this.createdate = createdate;
        this.modifydate = modifydate;
        this.projectOwner = projectOwner;
        this.projectPhase = projectPhase;
        this.orderDate = orderDate;
        this.assuranceBegin = assuranceBegin;
        this.assuranceDuration = assuranceDuration;
        this.assuranceRemark = assuranceRemark;
        this.reserve = reserve;
        this.remark = remark;
    }

    public WHSProject() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getProjectCode() {
        return projectCode;
    }

    public void setProjectCode(String projectCode) {
        this.projectCode = projectCode == null ? null : projectCode.trim();
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName == null ? null : customerName.trim();
    }

    public String getProjectType() {
        return projectType;
    }

    public void setProjectType(String projectType) {
        this.projectType = projectType == null ? null : projectType.trim();
    }

    public Date getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(Date deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public String getProjectStatus() {
        return projectStatus;
    }

    public void setProjectStatus(String projectStatus) {
        this.projectStatus = projectStatus == null ? null : projectStatus.trim();
    }

    public Long getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(Long createdBy) {
        this.createdBy = createdBy == null ? null : createdBy;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Date getModifydate() {
        return modifydate;
    }

    public void setModifydate(Date modifydate) {
        this.modifydate = modifydate;
    }

    public Integer getProjectOwner() {
        return projectOwner;
    }

    public void setProjectOwner(Integer projectOwner) {
        this.projectOwner = projectOwner;
    }

    public String getProjectPhase() {
        return projectPhase;
    }

    public void setProjectPhase(String projectPhase) {
        this.projectPhase = projectPhase == null ? null : projectPhase.trim();
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getAssuranceBegin() {
        return assuranceBegin;
    }

    public void setAssuranceBegin(String assuranceBegin) {
        this.assuranceBegin = assuranceBegin;
    }

    public String getAssuranceDuration() {
        return assuranceDuration;
    }

    public void setAssuranceDuration(String assuranceDuration) {
        this.assuranceDuration = assuranceDuration;
    }

    public String getAssuranceRemark() {
        return assuranceRemark;
    }

    public void setAssuranceRemark(String assuranceRemark) {
        this.assuranceRemark = assuranceRemark == null ? null : assuranceRemark.trim();
    }

    public String getReserve() {
        return reserve;
    }

    public void setReserve(String reserve) {
        this.reserve = reserve == null ? null : reserve.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}