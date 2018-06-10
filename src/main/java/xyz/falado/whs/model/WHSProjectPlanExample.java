package xyz.falado.whs.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class WHSProjectPlanExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WHSProjectPlanExample() {
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

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andSubprojectIdIsNull() {
            addCriterion("subproject_id is null");
            return (Criteria) this;
        }

        public Criteria andSubprojectIdIsNotNull() {
            addCriterion("subproject_id is not null");
            return (Criteria) this;
        }

        public Criteria andSubprojectIdEqualTo(Integer value) {
            addCriterion("subproject_id =", value, "subprojectId");
            return (Criteria) this;
        }

        public Criteria andSubprojectIdNotEqualTo(Integer value) {
            addCriterion("subproject_id <>", value, "subprojectId");
            return (Criteria) this;
        }

        public Criteria andSubprojectIdGreaterThan(Integer value) {
            addCriterion("subproject_id >", value, "subprojectId");
            return (Criteria) this;
        }

        public Criteria andSubprojectIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("subproject_id >=", value, "subprojectId");
            return (Criteria) this;
        }

        public Criteria andSubprojectIdLessThan(Integer value) {
            addCriterion("subproject_id <", value, "subprojectId");
            return (Criteria) this;
        }

        public Criteria andSubprojectIdLessThanOrEqualTo(Integer value) {
            addCriterion("subproject_id <=", value, "subprojectId");
            return (Criteria) this;
        }

        public Criteria andSubprojectIdIn(List<Integer> values) {
            addCriterion("subproject_id in", values, "subprojectId");
            return (Criteria) this;
        }

        public Criteria andSubprojectIdNotIn(List<Integer> values) {
            addCriterion("subproject_id not in", values, "subprojectId");
            return (Criteria) this;
        }

        public Criteria andSubprojectIdBetween(Integer value1, Integer value2) {
            addCriterion("subproject_id between", value1, value2, "subprojectId");
            return (Criteria) this;
        }

        public Criteria andSubprojectIdNotBetween(Integer value1, Integer value2) {
            addCriterion("subproject_id not between", value1, value2, "subprojectId");
            return (Criteria) this;
        }

        public Criteria andPlanBeginIsNull() {
            addCriterion("plan_begin is null");
            return (Criteria) this;
        }

        public Criteria andPlanBeginIsNotNull() {
            addCriterion("plan_begin is not null");
            return (Criteria) this;
        }

        public Criteria andPlanBeginEqualTo(Date value) {
            addCriterion("plan_begin =", value, "planBegin");
            return (Criteria) this;
        }

        public Criteria andPlanBeginNotEqualTo(Date value) {
            addCriterion("plan_begin <>", value, "planBegin");
            return (Criteria) this;
        }

        public Criteria andPlanBeginGreaterThan(Date value) {
            addCriterion("plan_begin >", value, "planBegin");
            return (Criteria) this;
        }

        public Criteria andPlanBeginGreaterThanOrEqualTo(Date value) {
            addCriterion("plan_begin >=", value, "planBegin");
            return (Criteria) this;
        }

        public Criteria andPlanBeginLessThan(Date value) {
            addCriterion("plan_begin <", value, "planBegin");
            return (Criteria) this;
        }

        public Criteria andPlanBeginLessThanOrEqualTo(Date value) {
            addCriterion("plan_begin <=", value, "planBegin");
            return (Criteria) this;
        }

        public Criteria andPlanBeginIn(List<Date> values) {
            addCriterion("plan_begin in", values, "planBegin");
            return (Criteria) this;
        }

        public Criteria andPlanBeginNotIn(List<Date> values) {
            addCriterion("plan_begin not in", values, "planBegin");
            return (Criteria) this;
        }

        public Criteria andPlanBeginBetween(Date value1, Date value2) {
            addCriterion("plan_begin between", value1, value2, "planBegin");
            return (Criteria) this;
        }

        public Criteria andPlanBeginNotBetween(Date value1, Date value2) {
            addCriterion("plan_begin not between", value1, value2, "planBegin");
            return (Criteria) this;
        }

        public Criteria andPlanEndIsNull() {
            addCriterion("plan_end is null");
            return (Criteria) this;
        }

        public Criteria andPlanEndIsNotNull() {
            addCriterion("plan_end is not null");
            return (Criteria) this;
        }

        public Criteria andPlanEndEqualTo(Date value) {
            addCriterion("plan_end =", value, "planEnd");
            return (Criteria) this;
        }

        public Criteria andPlanEndNotEqualTo(Date value) {
            addCriterion("plan_end <>", value, "planEnd");
            return (Criteria) this;
        }

        public Criteria andPlanEndGreaterThan(Date value) {
            addCriterion("plan_end >", value, "planEnd");
            return (Criteria) this;
        }

        public Criteria andPlanEndGreaterThanOrEqualTo(Date value) {
            addCriterion("plan_end >=", value, "planEnd");
            return (Criteria) this;
        }

        public Criteria andPlanEndLessThan(Date value) {
            addCriterion("plan_end <", value, "planEnd");
            return (Criteria) this;
        }

        public Criteria andPlanEndLessThanOrEqualTo(Date value) {
            addCriterion("plan_end <=", value, "planEnd");
            return (Criteria) this;
        }

        public Criteria andPlanEndIn(List<Date> values) {
            addCriterion("plan_end in", values, "planEnd");
            return (Criteria) this;
        }

        public Criteria andPlanEndNotIn(List<Date> values) {
            addCriterion("plan_end not in", values, "planEnd");
            return (Criteria) this;
        }

        public Criteria andPlanEndBetween(Date value1, Date value2) {
            addCriterion("plan_end between", value1, value2, "planEnd");
            return (Criteria) this;
        }

        public Criteria andPlanEndNotBetween(Date value1, Date value2) {
            addCriterion("plan_end not between", value1, value2, "planEnd");
            return (Criteria) this;
        }

        public Criteria andActuralBeginIsNull() {
            addCriterion("actural_begin is null");
            return (Criteria) this;
        }

        public Criteria andActuralBeginIsNotNull() {
            addCriterion("actural_begin is not null");
            return (Criteria) this;
        }

        public Criteria andActuralBeginEqualTo(Date value) {
            addCriterion("actural_begin =", value, "acturalBegin");
            return (Criteria) this;
        }

        public Criteria andActuralBeginNotEqualTo(Date value) {
            addCriterion("actural_begin <>", value, "acturalBegin");
            return (Criteria) this;
        }

        public Criteria andActuralBeginGreaterThan(Date value) {
            addCriterion("actural_begin >", value, "acturalBegin");
            return (Criteria) this;
        }

        public Criteria andActuralBeginGreaterThanOrEqualTo(Date value) {
            addCriterion("actural_begin >=", value, "acturalBegin");
            return (Criteria) this;
        }

        public Criteria andActuralBeginLessThan(Date value) {
            addCriterion("actural_begin <", value, "acturalBegin");
            return (Criteria) this;
        }

        public Criteria andActuralBeginLessThanOrEqualTo(Date value) {
            addCriterion("actural_begin <=", value, "acturalBegin");
            return (Criteria) this;
        }

        public Criteria andActuralBeginIn(List<Date> values) {
            addCriterion("actural_begin in", values, "acturalBegin");
            return (Criteria) this;
        }

        public Criteria andActuralBeginNotIn(List<Date> values) {
            addCriterion("actural_begin not in", values, "acturalBegin");
            return (Criteria) this;
        }

        public Criteria andActuralBeginBetween(Date value1, Date value2) {
            addCriterion("actural_begin between", value1, value2, "acturalBegin");
            return (Criteria) this;
        }

        public Criteria andActuralBeginNotBetween(Date value1, Date value2) {
            addCriterion("actural_begin not between", value1, value2, "acturalBegin");
            return (Criteria) this;
        }

        public Criteria andActuralEndIsNull() {
            addCriterion("actural_end is null");
            return (Criteria) this;
        }

        public Criteria andActuralEndIsNotNull() {
            addCriterion("actural_end is not null");
            return (Criteria) this;
        }

        public Criteria andActuralEndEqualTo(Date value) {
            addCriterion("actural_end =", value, "acturalEnd");
            return (Criteria) this;
        }

        public Criteria andActuralEndNotEqualTo(Date value) {
            addCriterion("actural_end <>", value, "acturalEnd");
            return (Criteria) this;
        }

        public Criteria andActuralEndGreaterThan(Date value) {
            addCriterion("actural_end >", value, "acturalEnd");
            return (Criteria) this;
        }

        public Criteria andActuralEndGreaterThanOrEqualTo(Date value) {
            addCriterion("actural_end >=", value, "acturalEnd");
            return (Criteria) this;
        }

        public Criteria andActuralEndLessThan(Date value) {
            addCriterion("actural_end <", value, "acturalEnd");
            return (Criteria) this;
        }

        public Criteria andActuralEndLessThanOrEqualTo(Date value) {
            addCriterion("actural_end <=", value, "acturalEnd");
            return (Criteria) this;
        }

        public Criteria andActuralEndIn(List<Date> values) {
            addCriterion("actural_end in", values, "acturalEnd");
            return (Criteria) this;
        }

        public Criteria andActuralEndNotIn(List<Date> values) {
            addCriterion("actural_end not in", values, "acturalEnd");
            return (Criteria) this;
        }

        public Criteria andActuralEndBetween(Date value1, Date value2) {
            addCriterion("actural_end between", value1, value2, "acturalEnd");
            return (Criteria) this;
        }

        public Criteria andActuralEndNotBetween(Date value1, Date value2) {
            addCriterion("actural_end not between", value1, value2, "acturalEnd");
            return (Criteria) this;
        }

        public Criteria andAssignerIdIsNull() {
            addCriterion("assigner_id is null");
            return (Criteria) this;
        }

        public Criteria andAssignerIdIsNotNull() {
            addCriterion("assigner_id is not null");
            return (Criteria) this;
        }

        public Criteria andAssignerIdEqualTo(Integer value) {
            addCriterion("assigner_id =", value, "assignerId");
            return (Criteria) this;
        }

        public Criteria andAssignerIdNotEqualTo(Integer value) {
            addCriterion("assigner_id <>", value, "assignerId");
            return (Criteria) this;
        }

        public Criteria andAssignerIdGreaterThan(Integer value) {
            addCriterion("assigner_id >", value, "assignerId");
            return (Criteria) this;
        }

        public Criteria andAssignerIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("assigner_id >=", value, "assignerId");
            return (Criteria) this;
        }

        public Criteria andAssignerIdLessThan(Integer value) {
            addCriterion("assigner_id <", value, "assignerId");
            return (Criteria) this;
        }

        public Criteria andAssignerIdLessThanOrEqualTo(Integer value) {
            addCriterion("assigner_id <=", value, "assignerId");
            return (Criteria) this;
        }

        public Criteria andAssignerIdIn(List<Integer> values) {
            addCriterion("assigner_id in", values, "assignerId");
            return (Criteria) this;
        }

        public Criteria andAssignerIdNotIn(List<Integer> values) {
            addCriterion("assigner_id not in", values, "assignerId");
            return (Criteria) this;
        }

        public Criteria andAssignerIdBetween(Integer value1, Integer value2) {
            addCriterion("assigner_id between", value1, value2, "assignerId");
            return (Criteria) this;
        }

        public Criteria andAssignerIdNotBetween(Integer value1, Integer value2) {
            addCriterion("assigner_id not between", value1, value2, "assignerId");
            return (Criteria) this;
        }

        public Criteria andPlanTypeIsNull() {
            addCriterion("plan_type is null");
            return (Criteria) this;
        }

        public Criteria andPlanTypeIsNotNull() {
            addCriterion("plan_type is not null");
            return (Criteria) this;
        }

        public Criteria andPlanTypeEqualTo(String value) {
            addCriterion("plan_type =", value, "planType");
            return (Criteria) this;
        }

        public Criteria andPlanTypeNotEqualTo(String value) {
            addCriterion("plan_type <>", value, "planType");
            return (Criteria) this;
        }

        public Criteria andPlanTypeGreaterThan(String value) {
            addCriterion("plan_type >", value, "planType");
            return (Criteria) this;
        }

        public Criteria andPlanTypeGreaterThanOrEqualTo(String value) {
            addCriterion("plan_type >=", value, "planType");
            return (Criteria) this;
        }

        public Criteria andPlanTypeLessThan(String value) {
            addCriterion("plan_type <", value, "planType");
            return (Criteria) this;
        }

        public Criteria andPlanTypeLessThanOrEqualTo(String value) {
            addCriterion("plan_type <=", value, "planType");
            return (Criteria) this;
        }

        public Criteria andPlanTypeLike(String value) {
            addCriterion("plan_type like", value, "planType");
            return (Criteria) this;
        }

        public Criteria andPlanTypeNotLike(String value) {
            addCriterion("plan_type not like", value, "planType");
            return (Criteria) this;
        }

        public Criteria andPlanTypeIn(List<String> values) {
            addCriterion("plan_type in", values, "planType");
            return (Criteria) this;
        }

        public Criteria andPlanTypeNotIn(List<String> values) {
            addCriterion("plan_type not in", values, "planType");
            return (Criteria) this;
        }

        public Criteria andPlanTypeBetween(String value1, String value2) {
            addCriterion("plan_type between", value1, value2, "planType");
            return (Criteria) this;
        }

        public Criteria andPlanTypeNotBetween(String value1, String value2) {
            addCriterion("plan_type not between", value1, value2, "planType");
            return (Criteria) this;
        }

        public Criteria andWorkNumberIsNull() {
            addCriterion("work_number is null");
            return (Criteria) this;
        }

        public Criteria andWorkNumberIsNotNull() {
            addCriterion("work_number is not null");
            return (Criteria) this;
        }

        public Criteria andWorkNumberEqualTo(Integer value) {
            addCriterion("work_number =", value, "workNumber");
            return (Criteria) this;
        }

        public Criteria andWorkNumberNotEqualTo(Integer value) {
            addCriterion("work_number <>", value, "workNumber");
            return (Criteria) this;
        }

        public Criteria andWorkNumberGreaterThan(Integer value) {
            addCriterion("work_number >", value, "workNumber");
            return (Criteria) this;
        }

        public Criteria andWorkNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("work_number >=", value, "workNumber");
            return (Criteria) this;
        }

        public Criteria andWorkNumberLessThan(Integer value) {
            addCriterion("work_number <", value, "workNumber");
            return (Criteria) this;
        }

        public Criteria andWorkNumberLessThanOrEqualTo(Integer value) {
            addCriterion("work_number <=", value, "workNumber");
            return (Criteria) this;
        }

        public Criteria andWorkNumberIn(List<Integer> values) {
            addCriterion("work_number in", values, "workNumber");
            return (Criteria) this;
        }

        public Criteria andWorkNumberNotIn(List<Integer> values) {
            addCriterion("work_number not in", values, "workNumber");
            return (Criteria) this;
        }

        public Criteria andWorkNumberBetween(Integer value1, Integer value2) {
            addCriterion("work_number between", value1, value2, "workNumber");
            return (Criteria) this;
        }

        public Criteria andWorkNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("work_number not between", value1, value2, "workNumber");
            return (Criteria) this;
        }

        public Criteria andDayhoursIsNull() {
            addCriterion("dayhours is null");
            return (Criteria) this;
        }

        public Criteria andDayhoursIsNotNull() {
            addCriterion("dayhours is not null");
            return (Criteria) this;
        }

        public Criteria andDayhoursEqualTo(Integer value) {
            addCriterion("dayhours =", value, "dayhours");
            return (Criteria) this;
        }

        public Criteria andDayhoursNotEqualTo(Integer value) {
            addCriterion("dayhours <>", value, "dayhours");
            return (Criteria) this;
        }

        public Criteria andDayhoursGreaterThan(Integer value) {
            addCriterion("dayhours >", value, "dayhours");
            return (Criteria) this;
        }

        public Criteria andDayhoursGreaterThanOrEqualTo(Integer value) {
            addCriterion("dayhours >=", value, "dayhours");
            return (Criteria) this;
        }

        public Criteria andDayhoursLessThan(Integer value) {
            addCriterion("dayhours <", value, "dayhours");
            return (Criteria) this;
        }

        public Criteria andDayhoursLessThanOrEqualTo(Integer value) {
            addCriterion("dayhours <=", value, "dayhours");
            return (Criteria) this;
        }

        public Criteria andDayhoursIn(List<Integer> values) {
            addCriterion("dayhours in", values, "dayhours");
            return (Criteria) this;
        }

        public Criteria andDayhoursNotIn(List<Integer> values) {
            addCriterion("dayhours not in", values, "dayhours");
            return (Criteria) this;
        }

        public Criteria andDayhoursBetween(Integer value1, Integer value2) {
            addCriterion("dayhours between", value1, value2, "dayhours");
            return (Criteria) this;
        }

        public Criteria andDayhoursNotBetween(Integer value1, Integer value2) {
            addCriterion("dayhours not between", value1, value2, "dayhours");
            return (Criteria) this;
        }

        public Criteria andWeekDaysIsNull() {
            addCriterion("week_days is null");
            return (Criteria) this;
        }

        public Criteria andWeekDaysIsNotNull() {
            addCriterion("week_days is not null");
            return (Criteria) this;
        }

        public Criteria andWeekDaysEqualTo(Integer value) {
            addCriterion("week_days =", value, "weekDays");
            return (Criteria) this;
        }

        public Criteria andWeekDaysNotEqualTo(Integer value) {
            addCriterion("week_days <>", value, "weekDays");
            return (Criteria) this;
        }

        public Criteria andWeekDaysGreaterThan(Integer value) {
            addCriterion("week_days >", value, "weekDays");
            return (Criteria) this;
        }

        public Criteria andWeekDaysGreaterThanOrEqualTo(Integer value) {
            addCriterion("week_days >=", value, "weekDays");
            return (Criteria) this;
        }

        public Criteria andWeekDaysLessThan(Integer value) {
            addCriterion("week_days <", value, "weekDays");
            return (Criteria) this;
        }

        public Criteria andWeekDaysLessThanOrEqualTo(Integer value) {
            addCriterion("week_days <=", value, "weekDays");
            return (Criteria) this;
        }

        public Criteria andWeekDaysIn(List<Integer> values) {
            addCriterion("week_days in", values, "weekDays");
            return (Criteria) this;
        }

        public Criteria andWeekDaysNotIn(List<Integer> values) {
            addCriterion("week_days not in", values, "weekDays");
            return (Criteria) this;
        }

        public Criteria andWeekDaysBetween(Integer value1, Integer value2) {
            addCriterion("week_days between", value1, value2, "weekDays");
            return (Criteria) this;
        }

        public Criteria andWeekDaysNotBetween(Integer value1, Integer value2) {
            addCriterion("week_days not between", value1, value2, "weekDays");
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