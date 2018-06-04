package xyz.falado.whs.model;

import java.util.ArrayList;
import java.util.List;

public class WHSDeviceProcessExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WHSDeviceProcessExample() {
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

        public Criteria andDeviceIdIsNull() {
            addCriterion("device_id is null");
            return (Criteria) this;
        }

        public Criteria andDeviceIdIsNotNull() {
            addCriterion("device_id is not null");
            return (Criteria) this;
        }

        public Criteria andDeviceIdEqualTo(Integer value) {
            addCriterion("device_id =", value, "deviceId");
            return (Criteria) this;
        }

        public Criteria andDeviceIdNotEqualTo(Integer value) {
            addCriterion("device_id <>", value, "deviceId");
            return (Criteria) this;
        }

        public Criteria andDeviceIdGreaterThan(Integer value) {
            addCriterion("device_id >", value, "deviceId");
            return (Criteria) this;
        }

        public Criteria andDeviceIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("device_id >=", value, "deviceId");
            return (Criteria) this;
        }

        public Criteria andDeviceIdLessThan(Integer value) {
            addCriterion("device_id <", value, "deviceId");
            return (Criteria) this;
        }

        public Criteria andDeviceIdLessThanOrEqualTo(Integer value) {
            addCriterion("device_id <=", value, "deviceId");
            return (Criteria) this;
        }

        public Criteria andDeviceIdIn(List<Integer> values) {
            addCriterion("device_id in", values, "deviceId");
            return (Criteria) this;
        }

        public Criteria andDeviceIdNotIn(List<Integer> values) {
            addCriterion("device_id not in", values, "deviceId");
            return (Criteria) this;
        }

        public Criteria andDeviceIdBetween(Integer value1, Integer value2) {
            addCriterion("device_id between", value1, value2, "deviceId");
            return (Criteria) this;
        }

        public Criteria andDeviceIdNotBetween(Integer value1, Integer value2) {
            addCriterion("device_id not between", value1, value2, "deviceId");
            return (Criteria) this;
        }

        public Criteria andProcessIdIsNull() {
            addCriterion("process_id is null");
            return (Criteria) this;
        }

        public Criteria andProcessIdIsNotNull() {
            addCriterion("process_id is not null");
            return (Criteria) this;
        }

        public Criteria andProcessIdEqualTo(Integer value) {
            addCriterion("process_id =", value, "processId");
            return (Criteria) this;
        }

        public Criteria andProcessIdNotEqualTo(Integer value) {
            addCriterion("process_id <>", value, "processId");
            return (Criteria) this;
        }

        public Criteria andProcessIdGreaterThan(Integer value) {
            addCriterion("process_id >", value, "processId");
            return (Criteria) this;
        }

        public Criteria andProcessIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("process_id >=", value, "processId");
            return (Criteria) this;
        }

        public Criteria andProcessIdLessThan(Integer value) {
            addCriterion("process_id <", value, "processId");
            return (Criteria) this;
        }

        public Criteria andProcessIdLessThanOrEqualTo(Integer value) {
            addCriterion("process_id <=", value, "processId");
            return (Criteria) this;
        }

        public Criteria andProcessIdIn(List<Integer> values) {
            addCriterion("process_id in", values, "processId");
            return (Criteria) this;
        }

        public Criteria andProcessIdNotIn(List<Integer> values) {
            addCriterion("process_id not in", values, "processId");
            return (Criteria) this;
        }

        public Criteria andProcessIdBetween(Integer value1, Integer value2) {
            addCriterion("process_id between", value1, value2, "processId");
            return (Criteria) this;
        }

        public Criteria andProcessIdNotBetween(Integer value1, Integer value2) {
            addCriterion("process_id not between", value1, value2, "processId");
            return (Criteria) this;
        }

        public Criteria andPriorityIsNull() {
            addCriterion("priority is null");
            return (Criteria) this;
        }

        public Criteria andPriorityIsNotNull() {
            addCriterion("priority is not null");
            return (Criteria) this;
        }

        public Criteria andPriorityEqualTo(Integer value) {
            addCriterion("priority =", value, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityNotEqualTo(Integer value) {
            addCriterion("priority <>", value, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityGreaterThan(Integer value) {
            addCriterion("priority >", value, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityGreaterThanOrEqualTo(Integer value) {
            addCriterion("priority >=", value, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityLessThan(Integer value) {
            addCriterion("priority <", value, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityLessThanOrEqualTo(Integer value) {
            addCriterion("priority <=", value, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityIn(List<Integer> values) {
            addCriterion("priority in", values, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityNotIn(List<Integer> values) {
            addCriterion("priority not in", values, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityBetween(Integer value1, Integer value2) {
            addCriterion("priority between", value1, value2, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityNotBetween(Integer value1, Integer value2) {
            addCriterion("priority not between", value1, value2, "priority");
            return (Criteria) this;
        }

        public Criteria andWorkhoursIsNull() {
            addCriterion("workhours is null");
            return (Criteria) this;
        }

        public Criteria andWorkhoursIsNotNull() {
            addCriterion("workhours is not null");
            return (Criteria) this;
        }

        public Criteria andWorkhoursEqualTo(Integer value) {
            addCriterion("workhours =", value, "workhours");
            return (Criteria) this;
        }

        public Criteria andWorkhoursNotEqualTo(Integer value) {
            addCriterion("workhours <>", value, "workhours");
            return (Criteria) this;
        }

        public Criteria andWorkhoursGreaterThan(Integer value) {
            addCriterion("workhours >", value, "workhours");
            return (Criteria) this;
        }

        public Criteria andWorkhoursGreaterThanOrEqualTo(Integer value) {
            addCriterion("workhours >=", value, "workhours");
            return (Criteria) this;
        }

        public Criteria andWorkhoursLessThan(Integer value) {
            addCriterion("workhours <", value, "workhours");
            return (Criteria) this;
        }

        public Criteria andWorkhoursLessThanOrEqualTo(Integer value) {
            addCriterion("workhours <=", value, "workhours");
            return (Criteria) this;
        }

        public Criteria andWorkhoursIn(List<Integer> values) {
            addCriterion("workhours in", values, "workhours");
            return (Criteria) this;
        }

        public Criteria andWorkhoursNotIn(List<Integer> values) {
            addCriterion("workhours not in", values, "workhours");
            return (Criteria) this;
        }

        public Criteria andWorkhoursBetween(Integer value1, Integer value2) {
            addCriterion("workhours between", value1, value2, "workhours");
            return (Criteria) this;
        }

        public Criteria andWorkhoursNotBetween(Integer value1, Integer value2) {
            addCriterion("workhours not between", value1, value2, "workhours");
            return (Criteria) this;
        }

        public Criteria andPreProcessIsNull() {
            addCriterion("pre_process is null");
            return (Criteria) this;
        }

        public Criteria andPreProcessIsNotNull() {
            addCriterion("pre_process is not null");
            return (Criteria) this;
        }

        public Criteria andPreProcessEqualTo(Integer value) {
            addCriterion("pre_process =", value, "preProcess");
            return (Criteria) this;
        }

        public Criteria andPreProcessNotEqualTo(Integer value) {
            addCriterion("pre_process <>", value, "preProcess");
            return (Criteria) this;
        }

        public Criteria andPreProcessGreaterThan(Integer value) {
            addCriterion("pre_process >", value, "preProcess");
            return (Criteria) this;
        }

        public Criteria andPreProcessGreaterThanOrEqualTo(Integer value) {
            addCriterion("pre_process >=", value, "preProcess");
            return (Criteria) this;
        }

        public Criteria andPreProcessLessThan(Integer value) {
            addCriterion("pre_process <", value, "preProcess");
            return (Criteria) this;
        }

        public Criteria andPreProcessLessThanOrEqualTo(Integer value) {
            addCriterion("pre_process <=", value, "preProcess");
            return (Criteria) this;
        }

        public Criteria andPreProcessIn(List<Integer> values) {
            addCriterion("pre_process in", values, "preProcess");
            return (Criteria) this;
        }

        public Criteria andPreProcessNotIn(List<Integer> values) {
            addCriterion("pre_process not in", values, "preProcess");
            return (Criteria) this;
        }

        public Criteria andPreProcessBetween(Integer value1, Integer value2) {
            addCriterion("pre_process between", value1, value2, "preProcess");
            return (Criteria) this;
        }

        public Criteria andPreProcessNotBetween(Integer value1, Integer value2) {
            addCriterion("pre_process not between", value1, value2, "preProcess");
            return (Criteria) this;
        }

        public Criteria andPostProcessIsNull() {
            addCriterion("post_process is null");
            return (Criteria) this;
        }

        public Criteria andPostProcessIsNotNull() {
            addCriterion("post_process is not null");
            return (Criteria) this;
        }

        public Criteria andPostProcessEqualTo(Integer value) {
            addCriterion("post_process =", value, "postProcess");
            return (Criteria) this;
        }

        public Criteria andPostProcessNotEqualTo(Integer value) {
            addCriterion("post_process <>", value, "postProcess");
            return (Criteria) this;
        }

        public Criteria andPostProcessGreaterThan(Integer value) {
            addCriterion("post_process >", value, "postProcess");
            return (Criteria) this;
        }

        public Criteria andPostProcessGreaterThanOrEqualTo(Integer value) {
            addCriterion("post_process >=", value, "postProcess");
            return (Criteria) this;
        }

        public Criteria andPostProcessLessThan(Integer value) {
            addCriterion("post_process <", value, "postProcess");
            return (Criteria) this;
        }

        public Criteria andPostProcessLessThanOrEqualTo(Integer value) {
            addCriterion("post_process <=", value, "postProcess");
            return (Criteria) this;
        }

        public Criteria andPostProcessIn(List<Integer> values) {
            addCriterion("post_process in", values, "postProcess");
            return (Criteria) this;
        }

        public Criteria andPostProcessNotIn(List<Integer> values) {
            addCriterion("post_process not in", values, "postProcess");
            return (Criteria) this;
        }

        public Criteria andPostProcessBetween(Integer value1, Integer value2) {
            addCriterion("post_process between", value1, value2, "postProcess");
            return (Criteria) this;
        }

        public Criteria andPostProcessNotBetween(Integer value1, Integer value2) {
            addCriterion("post_process not between", value1, value2, "postProcess");
            return (Criteria) this;
        }

        public Criteria andActiveIsNull() {
            addCriterion("active is null");
            return (Criteria) this;
        }

        public Criteria andActiveIsNotNull() {
            addCriterion("active is not null");
            return (Criteria) this;
        }

        public Criteria andActiveEqualTo(Byte value) {
            addCriterion("active =", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveNotEqualTo(Byte value) {
            addCriterion("active <>", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveGreaterThan(Byte value) {
            addCriterion("active >", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveGreaterThanOrEqualTo(Byte value) {
            addCriterion("active >=", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveLessThan(Byte value) {
            addCriterion("active <", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveLessThanOrEqualTo(Byte value) {
            addCriterion("active <=", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveIn(List<Byte> values) {
            addCriterion("active in", values, "active");
            return (Criteria) this;
        }

        public Criteria andActiveNotIn(List<Byte> values) {
            addCriterion("active not in", values, "active");
            return (Criteria) this;
        }

        public Criteria andActiveBetween(Byte value1, Byte value2) {
            addCriterion("active between", value1, value2, "active");
            return (Criteria) this;
        }

        public Criteria andActiveNotBetween(Byte value1, Byte value2) {
            addCriterion("active not between", value1, value2, "active");
            return (Criteria) this;
        }

        public Criteria andLimitWorkhoursIsNull() {
            addCriterion("limit_workhours is null");
            return (Criteria) this;
        }

        public Criteria andLimitWorkhoursIsNotNull() {
            addCriterion("limit_workhours is not null");
            return (Criteria) this;
        }

        public Criteria andLimitWorkhoursEqualTo(Integer value) {
            addCriterion("limit_workhours =", value, "limitWorkhours");
            return (Criteria) this;
        }

        public Criteria andLimitWorkhoursNotEqualTo(Integer value) {
            addCriterion("limit_workhours <>", value, "limitWorkhours");
            return (Criteria) this;
        }

        public Criteria andLimitWorkhoursGreaterThan(Integer value) {
            addCriterion("limit_workhours >", value, "limitWorkhours");
            return (Criteria) this;
        }

        public Criteria andLimitWorkhoursGreaterThanOrEqualTo(Integer value) {
            addCriterion("limit_workhours >=", value, "limitWorkhours");
            return (Criteria) this;
        }

        public Criteria andLimitWorkhoursLessThan(Integer value) {
            addCriterion("limit_workhours <", value, "limitWorkhours");
            return (Criteria) this;
        }

        public Criteria andLimitWorkhoursLessThanOrEqualTo(Integer value) {
            addCriterion("limit_workhours <=", value, "limitWorkhours");
            return (Criteria) this;
        }

        public Criteria andLimitWorkhoursIn(List<Integer> values) {
            addCriterion("limit_workhours in", values, "limitWorkhours");
            return (Criteria) this;
        }

        public Criteria andLimitWorkhoursNotIn(List<Integer> values) {
            addCriterion("limit_workhours not in", values, "limitWorkhours");
            return (Criteria) this;
        }

        public Criteria andLimitWorkhoursBetween(Integer value1, Integer value2) {
            addCriterion("limit_workhours between", value1, value2, "limitWorkhours");
            return (Criteria) this;
        }

        public Criteria andLimitWorkhoursNotBetween(Integer value1, Integer value2) {
            addCriterion("limit_workhours not between", value1, value2, "limitWorkhours");
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