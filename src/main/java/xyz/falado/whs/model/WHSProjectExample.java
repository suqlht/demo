package xyz.falado.whs.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class WHSProjectExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WHSProjectExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Long value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andProjectCodeIsNull() {
            addCriterion("project_code is null");
            return (Criteria) this;
        }

        public Criteria andProjectCodeIsNotNull() {
            addCriterion("project_code is not null");
            return (Criteria) this;
        }

        public Criteria andProjectCodeEqualTo(String value) {
            addCriterion("project_code =", value, "projectCode");
            return (Criteria) this;
        }

        public Criteria andProjectCodeNotEqualTo(String value) {
            addCriterion("project_code <>", value, "projectCode");
            return (Criteria) this;
        }

        public Criteria andProjectCodeGreaterThan(String value) {
            addCriterion("project_code >", value, "projectCode");
            return (Criteria) this;
        }

        public Criteria andProjectCodeGreaterThanOrEqualTo(String value) {
            addCriterion("project_code >=", value, "projectCode");
            return (Criteria) this;
        }

        public Criteria andProjectCodeLessThan(String value) {
            addCriterion("project_code <", value, "projectCode");
            return (Criteria) this;
        }

        public Criteria andProjectCodeLessThanOrEqualTo(String value) {
            addCriterion("project_code <=", value, "projectCode");
            return (Criteria) this;
        }

        public Criteria andProjectCodeLike(String value) {
            addCriterion("project_code like", value, "projectCode");
            return (Criteria) this;
        }

        public Criteria andProjectCodeNotLike(String value) {
            addCriterion("project_code not like", value, "projectCode");
            return (Criteria) this;
        }

        public Criteria andProjectCodeIn(List<String> values) {
            addCriterion("project_code in", values, "projectCode");
            return (Criteria) this;
        }

        public Criteria andProjectCodeNotIn(List<String> values) {
            addCriterion("project_code not in", values, "projectCode");
            return (Criteria) this;
        }

        public Criteria andProjectCodeBetween(String value1, String value2) {
            addCriterion("project_code between", value1, value2, "projectCode");
            return (Criteria) this;
        }

        public Criteria andProjectCodeNotBetween(String value1, String value2) {
            addCriterion("project_code not between", value1, value2, "projectCode");
            return (Criteria) this;
        }

        public Criteria andCustomerNameIsNull() {
            addCriterion("customer_name is null");
            return (Criteria) this;
        }

        public Criteria andCustomerNameIsNotNull() {
            addCriterion("customer_name is not null");
            return (Criteria) this;
        }

        public Criteria andCustomerNameEqualTo(String value) {
            addCriterion("customer_name =", value, "customerName");
            return (Criteria) this;
        }

        public Criteria andCustomerNameNotEqualTo(String value) {
            addCriterion("customer_name <>", value, "customerName");
            return (Criteria) this;
        }

        public Criteria andCustomerNameGreaterThan(String value) {
            addCriterion("customer_name >", value, "customerName");
            return (Criteria) this;
        }

        public Criteria andCustomerNameGreaterThanOrEqualTo(String value) {
            addCriterion("customer_name >=", value, "customerName");
            return (Criteria) this;
        }

        public Criteria andCustomerNameLessThan(String value) {
            addCriterion("customer_name <", value, "customerName");
            return (Criteria) this;
        }

        public Criteria andCustomerNameLessThanOrEqualTo(String value) {
            addCriterion("customer_name <=", value, "customerName");
            return (Criteria) this;
        }

        public Criteria andCustomerNameLike(String value) {
            addCriterion("customer_name like", value, "customerName");
            return (Criteria) this;
        }

        public Criteria andCustomerNameNotLike(String value) {
            addCriterion("customer_name not like", value, "customerName");
            return (Criteria) this;
        }

        public Criteria andCustomerNameIn(List<String> values) {
            addCriterion("customer_name in", values, "customerName");
            return (Criteria) this;
        }

        public Criteria andCustomerNameNotIn(List<String> values) {
            addCriterion("customer_name not in", values, "customerName");
            return (Criteria) this;
        }

        public Criteria andCustomerNameBetween(String value1, String value2) {
            addCriterion("customer_name between", value1, value2, "customerName");
            return (Criteria) this;
        }

        public Criteria andCustomerNameNotBetween(String value1, String value2) {
            addCriterion("customer_name not between", value1, value2, "customerName");
            return (Criteria) this;
        }

        public Criteria andProjectTypeIsNull() {
            addCriterion("project_type is null");
            return (Criteria) this;
        }

        public Criteria andProjectTypeIsNotNull() {
            addCriterion("project_type is not null");
            return (Criteria) this;
        }

        public Criteria andProjectTypeEqualTo(String value) {
            addCriterion("project_type =", value, "projectType");
            return (Criteria) this;
        }

        public Criteria andProjectTypeNotEqualTo(String value) {
            addCriterion("project_type <>", value, "projectType");
            return (Criteria) this;
        }

        public Criteria andProjectTypeGreaterThan(String value) {
            addCriterion("project_type >", value, "projectType");
            return (Criteria) this;
        }

        public Criteria andProjectTypeGreaterThanOrEqualTo(String value) {
            addCriterion("project_type >=", value, "projectType");
            return (Criteria) this;
        }

        public Criteria andProjectTypeLessThan(String value) {
            addCriterion("project_type <", value, "projectType");
            return (Criteria) this;
        }

        public Criteria andProjectTypeLessThanOrEqualTo(String value) {
            addCriterion("project_type <=", value, "projectType");
            return (Criteria) this;
        }

        public Criteria andProjectTypeLike(String value) {
            addCriterion("project_type like", value, "projectType");
            return (Criteria) this;
        }

        public Criteria andProjectTypeNotLike(String value) {
            addCriterion("project_type not like", value, "projectType");
            return (Criteria) this;
        }

        public Criteria andProjectTypeIn(List<String> values) {
            addCriterion("project_type in", values, "projectType");
            return (Criteria) this;
        }

        public Criteria andProjectTypeNotIn(List<String> values) {
            addCriterion("project_type not in", values, "projectType");
            return (Criteria) this;
        }

        public Criteria andProjectTypeBetween(String value1, String value2) {
            addCriterion("project_type between", value1, value2, "projectType");
            return (Criteria) this;
        }

        public Criteria andProjectTypeNotBetween(String value1, String value2) {
            addCriterion("project_type not between", value1, value2, "projectType");
            return (Criteria) this;
        }

        public Criteria andDeliveryDateIsNull() {
            addCriterion("delivery_date is null");
            return (Criteria) this;
        }

        public Criteria andDeliveryDateIsNotNull() {
            addCriterion("delivery_date is not null");
            return (Criteria) this;
        }

        public Criteria andDeliveryDateEqualTo(Date value) {
            addCriterionForJDBCDate("delivery_date =", value, "deliveryDate");
            return (Criteria) this;
        }

        public Criteria andDeliveryDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("delivery_date <>", value, "deliveryDate");
            return (Criteria) this;
        }

        public Criteria andDeliveryDateGreaterThan(Date value) {
            addCriterionForJDBCDate("delivery_date >", value, "deliveryDate");
            return (Criteria) this;
        }

        public Criteria andDeliveryDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("delivery_date >=", value, "deliveryDate");
            return (Criteria) this;
        }

        public Criteria andDeliveryDateLessThan(Date value) {
            addCriterionForJDBCDate("delivery_date <", value, "deliveryDate");
            return (Criteria) this;
        }

        public Criteria andDeliveryDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("delivery_date <=", value, "deliveryDate");
            return (Criteria) this;
        }

        public Criteria andDeliveryDateIn(List<Date> values) {
            addCriterionForJDBCDate("delivery_date in", values, "deliveryDate");
            return (Criteria) this;
        }

        public Criteria andDeliveryDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("delivery_date not in", values, "deliveryDate");
            return (Criteria) this;
        }

        public Criteria andDeliveryDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("delivery_date between", value1, value2, "deliveryDate");
            return (Criteria) this;
        }

        public Criteria andDeliveryDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("delivery_date not between", value1, value2, "deliveryDate");
            return (Criteria) this;
        }

        public Criteria andProjectStatusIsNull() {
            addCriterion("project_status is null");
            return (Criteria) this;
        }

        public Criteria andProjectStatusIsNotNull() {
            addCriterion("project_status is not null");
            return (Criteria) this;
        }

        public Criteria andProjectStatusEqualTo(String value) {
            addCriterion("project_status =", value, "projectStatus");
            return (Criteria) this;
        }

        public Criteria andProjectStatusNotEqualTo(String value) {
            addCriterion("project_status <>", value, "projectStatus");
            return (Criteria) this;
        }

        public Criteria andProjectStatusGreaterThan(String value) {
            addCriterion("project_status >", value, "projectStatus");
            return (Criteria) this;
        }

        public Criteria andProjectStatusGreaterThanOrEqualTo(String value) {
            addCriterion("project_status >=", value, "projectStatus");
            return (Criteria) this;
        }

        public Criteria andProjectStatusLessThan(String value) {
            addCriterion("project_status <", value, "projectStatus");
            return (Criteria) this;
        }

        public Criteria andProjectStatusLessThanOrEqualTo(String value) {
            addCriterion("project_status <=", value, "projectStatus");
            return (Criteria) this;
        }

        public Criteria andProjectStatusLike(String value) {
            addCriterion("project_status like", value, "projectStatus");
            return (Criteria) this;
        }

        public Criteria andProjectStatusNotLike(String value) {
            addCriterion("project_status not like", value, "projectStatus");
            return (Criteria) this;
        }

        public Criteria andProjectStatusIn(List<String> values) {
            addCriterion("project_status in", values, "projectStatus");
            return (Criteria) this;
        }

        public Criteria andProjectStatusNotIn(List<String> values) {
            addCriterion("project_status not in", values, "projectStatus");
            return (Criteria) this;
        }

        public Criteria andProjectStatusBetween(String value1, String value2) {
            addCriterion("project_status between", value1, value2, "projectStatus");
            return (Criteria) this;
        }

        public Criteria andProjectStatusNotBetween(String value1, String value2) {
            addCriterion("project_status not between", value1, value2, "projectStatus");
            return (Criteria) this;
        }

        public Criteria andCreatedByIsNull() {
            addCriterion("created_by is null");
            return (Criteria) this;
        }

        public Criteria andCreatedByIsNotNull() {
            addCriterion("created_by is not null");
            return (Criteria) this;
        }

        public Criteria andCreatedByEqualTo(String value) {
            addCriterion("created_by =", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByNotEqualTo(String value) {
            addCriterion("created_by <>", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByGreaterThan(String value) {
            addCriterion("created_by >", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByGreaterThanOrEqualTo(String value) {
            addCriterion("created_by >=", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByLessThan(String value) {
            addCriterion("created_by <", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByLessThanOrEqualTo(String value) {
            addCriterion("created_by <=", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByLike(String value) {
            addCriterion("created_by like", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByNotLike(String value) {
            addCriterion("created_by not like", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByIn(List<String> values) {
            addCriterion("created_by in", values, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByNotIn(List<String> values) {
            addCriterion("created_by not in", values, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByBetween(String value1, String value2) {
            addCriterion("created_by between", value1, value2, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByNotBetween(String value1, String value2) {
            addCriterion("created_by not between", value1, value2, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedateIsNull() {
            addCriterion("createdate is null");
            return (Criteria) this;
        }

        public Criteria andCreatedateIsNotNull() {
            addCriterion("createdate is not null");
            return (Criteria) this;
        }

        public Criteria andCreatedateEqualTo(Date value) {
            addCriterion("createdate =", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateNotEqualTo(Date value) {
            addCriterion("createdate <>", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateGreaterThan(Date value) {
            addCriterion("createdate >", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateGreaterThanOrEqualTo(Date value) {
            addCriterion("createdate >=", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateLessThan(Date value) {
            addCriterion("createdate <", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateLessThanOrEqualTo(Date value) {
            addCriterion("createdate <=", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateIn(List<Date> values) {
            addCriterion("createdate in", values, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateNotIn(List<Date> values) {
            addCriterion("createdate not in", values, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateBetween(Date value1, Date value2) {
            addCriterion("createdate between", value1, value2, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateNotBetween(Date value1, Date value2) {
            addCriterion("createdate not between", value1, value2, "createdate");
            return (Criteria) this;
        }

        public Criteria andModifydateIsNull() {
            addCriterion("modifydate is null");
            return (Criteria) this;
        }

        public Criteria andModifydateIsNotNull() {
            addCriterion("modifydate is not null");
            return (Criteria) this;
        }

        public Criteria andModifydateEqualTo(Date value) {
            addCriterion("modifydate =", value, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateNotEqualTo(Date value) {
            addCriterion("modifydate <>", value, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateGreaterThan(Date value) {
            addCriterion("modifydate >", value, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateGreaterThanOrEqualTo(Date value) {
            addCriterion("modifydate >=", value, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateLessThan(Date value) {
            addCriterion("modifydate <", value, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateLessThanOrEqualTo(Date value) {
            addCriterion("modifydate <=", value, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateIn(List<Date> values) {
            addCriterion("modifydate in", values, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateNotIn(List<Date> values) {
            addCriterion("modifydate not in", values, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateBetween(Date value1, Date value2) {
            addCriterion("modifydate between", value1, value2, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateNotBetween(Date value1, Date value2) {
            addCriterion("modifydate not between", value1, value2, "modifydate");
            return (Criteria) this;
        }

        public Criteria andProjectOwnerIsNull() {
            addCriterion("project_owner is null");
            return (Criteria) this;
        }

        public Criteria andProjectOwnerIsNotNull() {
            addCriterion("project_owner is not null");
            return (Criteria) this;
        }

        public Criteria andProjectOwnerEqualTo(Integer value) {
            addCriterion("project_owner =", value, "projectOwner");
            return (Criteria) this;
        }

        public Criteria andProjectOwnerNotEqualTo(Integer value) {
            addCriterion("project_owner <>", value, "projectOwner");
            return (Criteria) this;
        }

        public Criteria andProjectOwnerGreaterThan(Integer value) {
            addCriterion("project_owner >", value, "projectOwner");
            return (Criteria) this;
        }

        public Criteria andProjectOwnerGreaterThanOrEqualTo(Integer value) {
            addCriterion("project_owner >=", value, "projectOwner");
            return (Criteria) this;
        }

        public Criteria andProjectOwnerLessThan(Integer value) {
            addCriterion("project_owner <", value, "projectOwner");
            return (Criteria) this;
        }

        public Criteria andProjectOwnerLessThanOrEqualTo(Integer value) {
            addCriterion("project_owner <=", value, "projectOwner");
            return (Criteria) this;
        }

        public Criteria andProjectOwnerIn(List<Integer> values) {
            addCriterion("project_owner in", values, "projectOwner");
            return (Criteria) this;
        }

        public Criteria andProjectOwnerNotIn(List<Integer> values) {
            addCriterion("project_owner not in", values, "projectOwner");
            return (Criteria) this;
        }

        public Criteria andProjectOwnerBetween(Integer value1, Integer value2) {
            addCriterion("project_owner between", value1, value2, "projectOwner");
            return (Criteria) this;
        }

        public Criteria andProjectOwnerNotBetween(Integer value1, Integer value2) {
            addCriterion("project_owner not between", value1, value2, "projectOwner");
            return (Criteria) this;
        }

        public Criteria andProjectPhaseIsNull() {
            addCriterion("project_phase is null");
            return (Criteria) this;
        }

        public Criteria andProjectPhaseIsNotNull() {
            addCriterion("project_phase is not null");
            return (Criteria) this;
        }

        public Criteria andProjectPhaseEqualTo(String value) {
            addCriterion("project_phase =", value, "projectPhase");
            return (Criteria) this;
        }

        public Criteria andProjectPhaseNotEqualTo(String value) {
            addCriterion("project_phase <>", value, "projectPhase");
            return (Criteria) this;
        }

        public Criteria andProjectPhaseGreaterThan(String value) {
            addCriterion("project_phase >", value, "projectPhase");
            return (Criteria) this;
        }

        public Criteria andProjectPhaseGreaterThanOrEqualTo(String value) {
            addCriterion("project_phase >=", value, "projectPhase");
            return (Criteria) this;
        }

        public Criteria andProjectPhaseLessThan(String value) {
            addCriterion("project_phase <", value, "projectPhase");
            return (Criteria) this;
        }

        public Criteria andProjectPhaseLessThanOrEqualTo(String value) {
            addCriterion("project_phase <=", value, "projectPhase");
            return (Criteria) this;
        }

        public Criteria andProjectPhaseLike(String value) {
            addCriterion("project_phase like", value, "projectPhase");
            return (Criteria) this;
        }

        public Criteria andProjectPhaseNotLike(String value) {
            addCriterion("project_phase not like", value, "projectPhase");
            return (Criteria) this;
        }

        public Criteria andProjectPhaseIn(List<String> values) {
            addCriterion("project_phase in", values, "projectPhase");
            return (Criteria) this;
        }

        public Criteria andProjectPhaseNotIn(List<String> values) {
            addCriterion("project_phase not in", values, "projectPhase");
            return (Criteria) this;
        }

        public Criteria andProjectPhaseBetween(String value1, String value2) {
            addCriterion("project_phase between", value1, value2, "projectPhase");
            return (Criteria) this;
        }

        public Criteria andProjectPhaseNotBetween(String value1, String value2) {
            addCriterion("project_phase not between", value1, value2, "projectPhase");
            return (Criteria) this;
        }

        public Criteria andOrderDateIsNull() {
            addCriterion("order_date is null");
            return (Criteria) this;
        }

        public Criteria andOrderDateIsNotNull() {
            addCriterion("order_date is not null");
            return (Criteria) this;
        }

        public Criteria andOrderDateEqualTo(Date value) {
            addCriterionForJDBCDate("order_date =", value, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("order_date <>", value, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateGreaterThan(Date value) {
            addCriterionForJDBCDate("order_date >", value, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("order_date >=", value, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateLessThan(Date value) {
            addCriterionForJDBCDate("order_date <", value, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("order_date <=", value, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateIn(List<Date> values) {
            addCriterionForJDBCDate("order_date in", values, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("order_date not in", values, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("order_date between", value1, value2, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("order_date not between", value1, value2, "orderDate");
            return (Criteria) this;
        }

        public Criteria andAssuranceBeginIsNull() {
            addCriterion("assurance_begin is null");
            return (Criteria) this;
        }

        public Criteria andAssuranceBeginIsNotNull() {
            addCriterion("assurance_begin is not null");
            return (Criteria) this;
        }

        public Criteria andAssuranceBeginEqualTo(Integer value) {
            addCriterion("assurance_begin =", value, "assuranceBegin");
            return (Criteria) this;
        }

        public Criteria andAssuranceBeginNotEqualTo(Integer value) {
            addCriterion("assurance_begin <>", value, "assuranceBegin");
            return (Criteria) this;
        }

        public Criteria andAssuranceBeginGreaterThan(Integer value) {
            addCriterion("assurance_begin >", value, "assuranceBegin");
            return (Criteria) this;
        }

        public Criteria andAssuranceBeginGreaterThanOrEqualTo(Integer value) {
            addCriterion("assurance_begin >=", value, "assuranceBegin");
            return (Criteria) this;
        }

        public Criteria andAssuranceBeginLessThan(Integer value) {
            addCriterion("assurance_begin <", value, "assuranceBegin");
            return (Criteria) this;
        }

        public Criteria andAssuranceBeginLessThanOrEqualTo(Integer value) {
            addCriterion("assurance_begin <=", value, "assuranceBegin");
            return (Criteria) this;
        }

        public Criteria andAssuranceBeginIn(List<Integer> values) {
            addCriterion("assurance_begin in", values, "assuranceBegin");
            return (Criteria) this;
        }

        public Criteria andAssuranceBeginNotIn(List<Integer> values) {
            addCriterion("assurance_begin not in", values, "assuranceBegin");
            return (Criteria) this;
        }

        public Criteria andAssuranceBeginBetween(Integer value1, Integer value2) {
            addCriterion("assurance_begin between", value1, value2, "assuranceBegin");
            return (Criteria) this;
        }

        public Criteria andAssuranceBeginNotBetween(Integer value1, Integer value2) {
            addCriterion("assurance_begin not between", value1, value2, "assuranceBegin");
            return (Criteria) this;
        }

        public Criteria andAssuranceDurationIsNull() {
            addCriterion("assurance_duration is null");
            return (Criteria) this;
        }

        public Criteria andAssuranceDurationIsNotNull() {
            addCriterion("assurance_duration is not null");
            return (Criteria) this;
        }

        public Criteria andAssuranceDurationEqualTo(Integer value) {
            addCriterion("assurance_duration =", value, "assuranceDuration");
            return (Criteria) this;
        }

        public Criteria andAssuranceDurationNotEqualTo(Integer value) {
            addCriterion("assurance_duration <>", value, "assuranceDuration");
            return (Criteria) this;
        }

        public Criteria andAssuranceDurationGreaterThan(Integer value) {
            addCriterion("assurance_duration >", value, "assuranceDuration");
            return (Criteria) this;
        }

        public Criteria andAssuranceDurationGreaterThanOrEqualTo(Integer value) {
            addCriterion("assurance_duration >=", value, "assuranceDuration");
            return (Criteria) this;
        }

        public Criteria andAssuranceDurationLessThan(Integer value) {
            addCriterion("assurance_duration <", value, "assuranceDuration");
            return (Criteria) this;
        }

        public Criteria andAssuranceDurationLessThanOrEqualTo(Integer value) {
            addCriterion("assurance_duration <=", value, "assuranceDuration");
            return (Criteria) this;
        }

        public Criteria andAssuranceDurationIn(List<Integer> values) {
            addCriterion("assurance_duration in", values, "assuranceDuration");
            return (Criteria) this;
        }

        public Criteria andAssuranceDurationNotIn(List<Integer> values) {
            addCriterion("assurance_duration not in", values, "assuranceDuration");
            return (Criteria) this;
        }

        public Criteria andAssuranceDurationBetween(Integer value1, Integer value2) {
            addCriterion("assurance_duration between", value1, value2, "assuranceDuration");
            return (Criteria) this;
        }

        public Criteria andAssuranceDurationNotBetween(Integer value1, Integer value2) {
            addCriterion("assurance_duration not between", value1, value2, "assuranceDuration");
            return (Criteria) this;
        }

        public Criteria andAssuranceRemarkIsNull() {
            addCriterion("assurance_remark is null");
            return (Criteria) this;
        }

        public Criteria andAssuranceRemarkIsNotNull() {
            addCriterion("assurance_remark is not null");
            return (Criteria) this;
        }

        public Criteria andAssuranceRemarkEqualTo(String value) {
            addCriterion("assurance_remark =", value, "assuranceRemark");
            return (Criteria) this;
        }

        public Criteria andAssuranceRemarkNotEqualTo(String value) {
            addCriterion("assurance_remark <>", value, "assuranceRemark");
            return (Criteria) this;
        }

        public Criteria andAssuranceRemarkGreaterThan(String value) {
            addCriterion("assurance_remark >", value, "assuranceRemark");
            return (Criteria) this;
        }

        public Criteria andAssuranceRemarkGreaterThanOrEqualTo(String value) {
            addCriterion("assurance_remark >=", value, "assuranceRemark");
            return (Criteria) this;
        }

        public Criteria andAssuranceRemarkLessThan(String value) {
            addCriterion("assurance_remark <", value, "assuranceRemark");
            return (Criteria) this;
        }

        public Criteria andAssuranceRemarkLessThanOrEqualTo(String value) {
            addCriterion("assurance_remark <=", value, "assuranceRemark");
            return (Criteria) this;
        }

        public Criteria andAssuranceRemarkLike(String value) {
            addCriterion("assurance_remark like", value, "assuranceRemark");
            return (Criteria) this;
        }

        public Criteria andAssuranceRemarkNotLike(String value) {
            addCriterion("assurance_remark not like", value, "assuranceRemark");
            return (Criteria) this;
        }

        public Criteria andAssuranceRemarkIn(List<String> values) {
            addCriterion("assurance_remark in", values, "assuranceRemark");
            return (Criteria) this;
        }

        public Criteria andAssuranceRemarkNotIn(List<String> values) {
            addCriterion("assurance_remark not in", values, "assuranceRemark");
            return (Criteria) this;
        }

        public Criteria andAssuranceRemarkBetween(String value1, String value2) {
            addCriterion("assurance_remark between", value1, value2, "assuranceRemark");
            return (Criteria) this;
        }

        public Criteria andAssuranceRemarkNotBetween(String value1, String value2) {
            addCriterion("assurance_remark not between", value1, value2, "assuranceRemark");
            return (Criteria) this;
        }

        public Criteria andReserveIsNull() {
            addCriterion("reserve is null");
            return (Criteria) this;
        }

        public Criteria andReserveIsNotNull() {
            addCriterion("reserve is not null");
            return (Criteria) this;
        }

        public Criteria andReserveEqualTo(String value) {
            addCriterion("reserve =", value, "reserve");
            return (Criteria) this;
        }

        public Criteria andReserveNotEqualTo(String value) {
            addCriterion("reserve <>", value, "reserve");
            return (Criteria) this;
        }

        public Criteria andReserveGreaterThan(String value) {
            addCriterion("reserve >", value, "reserve");
            return (Criteria) this;
        }

        public Criteria andReserveGreaterThanOrEqualTo(String value) {
            addCriterion("reserve >=", value, "reserve");
            return (Criteria) this;
        }

        public Criteria andReserveLessThan(String value) {
            addCriterion("reserve <", value, "reserve");
            return (Criteria) this;
        }

        public Criteria andReserveLessThanOrEqualTo(String value) {
            addCriterion("reserve <=", value, "reserve");
            return (Criteria) this;
        }

        public Criteria andReserveLike(String value) {
            addCriterion("reserve like", value, "reserve");
            return (Criteria) this;
        }

        public Criteria andReserveNotLike(String value) {
            addCriterion("reserve not like", value, "reserve");
            return (Criteria) this;
        }

        public Criteria andReserveIn(List<String> values) {
            addCriterion("reserve in", values, "reserve");
            return (Criteria) this;
        }

        public Criteria andReserveNotIn(List<String> values) {
            addCriterion("reserve not in", values, "reserve");
            return (Criteria) this;
        }

        public Criteria andReserveBetween(String value1, String value2) {
            addCriterion("reserve between", value1, value2, "reserve");
            return (Criteria) this;
        }

        public Criteria andReserveNotBetween(String value1, String value2) {
            addCriterion("reserve not between", value1, value2, "reserve");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}