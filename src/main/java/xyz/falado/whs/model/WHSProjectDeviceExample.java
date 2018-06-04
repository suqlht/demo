package xyz.falado.whs.model;

import java.util.ArrayList;
import java.util.List;

public class WHSProjectDeviceExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WHSProjectDeviceExample() {
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

        public Criteria andProjectIdIsNull() {
            addCriterion("project_id is null");
            return (Criteria) this;
        }

        public Criteria andProjectIdIsNotNull() {
            addCriterion("project_id is not null");
            return (Criteria) this;
        }

        public Criteria andProjectIdEqualTo(Integer value) {
            addCriterion("project_id =", value, "projectId");
            return (Criteria) this;
        }

        public Criteria andProjectIdNotEqualTo(Integer value) {
            addCriterion("project_id <>", value, "projectId");
            return (Criteria) this;
        }

        public Criteria andProjectIdGreaterThan(Integer value) {
            addCriterion("project_id >", value, "projectId");
            return (Criteria) this;
        }

        public Criteria andProjectIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("project_id >=", value, "projectId");
            return (Criteria) this;
        }

        public Criteria andProjectIdLessThan(Integer value) {
            addCriterion("project_id <", value, "projectId");
            return (Criteria) this;
        }

        public Criteria andProjectIdLessThanOrEqualTo(Integer value) {
            addCriterion("project_id <=", value, "projectId");
            return (Criteria) this;
        }

        public Criteria andProjectIdIn(List<Integer> values) {
            addCriterion("project_id in", values, "projectId");
            return (Criteria) this;
        }

        public Criteria andProjectIdNotIn(List<Integer> values) {
            addCriterion("project_id not in", values, "projectId");
            return (Criteria) this;
        }

        public Criteria andProjectIdBetween(Integer value1, Integer value2) {
            addCriterion("project_id between", value1, value2, "projectId");
            return (Criteria) this;
        }

        public Criteria andProjectIdNotBetween(Integer value1, Integer value2) {
            addCriterion("project_id not between", value1, value2, "projectId");
            return (Criteria) this;
        }

        public Criteria andDeviceCodeIsNull() {
            addCriterion("device_code is null");
            return (Criteria) this;
        }

        public Criteria andDeviceCodeIsNotNull() {
            addCriterion("device_code is not null");
            return (Criteria) this;
        }

        public Criteria andDeviceCodeEqualTo(String value) {
            addCriterion("device_code =", value, "deviceCode");
            return (Criteria) this;
        }

        public Criteria andDeviceCodeNotEqualTo(String value) {
            addCriterion("device_code <>", value, "deviceCode");
            return (Criteria) this;
        }

        public Criteria andDeviceCodeGreaterThan(String value) {
            addCriterion("device_code >", value, "deviceCode");
            return (Criteria) this;
        }

        public Criteria andDeviceCodeGreaterThanOrEqualTo(String value) {
            addCriterion("device_code >=", value, "deviceCode");
            return (Criteria) this;
        }

        public Criteria andDeviceCodeLessThan(String value) {
            addCriterion("device_code <", value, "deviceCode");
            return (Criteria) this;
        }

        public Criteria andDeviceCodeLessThanOrEqualTo(String value) {
            addCriterion("device_code <=", value, "deviceCode");
            return (Criteria) this;
        }

        public Criteria andDeviceCodeLike(String value) {
            addCriterion("device_code like", value, "deviceCode");
            return (Criteria) this;
        }

        public Criteria andDeviceCodeNotLike(String value) {
            addCriterion("device_code not like", value, "deviceCode");
            return (Criteria) this;
        }

        public Criteria andDeviceCodeIn(List<String> values) {
            addCriterion("device_code in", values, "deviceCode");
            return (Criteria) this;
        }

        public Criteria andDeviceCodeNotIn(List<String> values) {
            addCriterion("device_code not in", values, "deviceCode");
            return (Criteria) this;
        }

        public Criteria andDeviceCodeBetween(String value1, String value2) {
            addCriterion("device_code between", value1, value2, "deviceCode");
            return (Criteria) this;
        }

        public Criteria andDeviceCodeNotBetween(String value1, String value2) {
            addCriterion("device_code not between", value1, value2, "deviceCode");
            return (Criteria) this;
        }

        public Criteria andDeviceQuantityIsNull() {
            addCriterion("device_quantity is null");
            return (Criteria) this;
        }

        public Criteria andDeviceQuantityIsNotNull() {
            addCriterion("device_quantity is not null");
            return (Criteria) this;
        }

        public Criteria andDeviceQuantityEqualTo(Integer value) {
            addCriterion("device_quantity =", value, "deviceQuantity");
            return (Criteria) this;
        }

        public Criteria andDeviceQuantityNotEqualTo(Integer value) {
            addCriterion("device_quantity <>", value, "deviceQuantity");
            return (Criteria) this;
        }

        public Criteria andDeviceQuantityGreaterThan(Integer value) {
            addCriterion("device_quantity >", value, "deviceQuantity");
            return (Criteria) this;
        }

        public Criteria andDeviceQuantityGreaterThanOrEqualTo(Integer value) {
            addCriterion("device_quantity >=", value, "deviceQuantity");
            return (Criteria) this;
        }

        public Criteria andDeviceQuantityLessThan(Integer value) {
            addCriterion("device_quantity <", value, "deviceQuantity");
            return (Criteria) this;
        }

        public Criteria andDeviceQuantityLessThanOrEqualTo(Integer value) {
            addCriterion("device_quantity <=", value, "deviceQuantity");
            return (Criteria) this;
        }

        public Criteria andDeviceQuantityIn(List<Integer> values) {
            addCriterion("device_quantity in", values, "deviceQuantity");
            return (Criteria) this;
        }

        public Criteria andDeviceQuantityNotIn(List<Integer> values) {
            addCriterion("device_quantity not in", values, "deviceQuantity");
            return (Criteria) this;
        }

        public Criteria andDeviceQuantityBetween(Integer value1, Integer value2) {
            addCriterion("device_quantity between", value1, value2, "deviceQuantity");
            return (Criteria) this;
        }

        public Criteria andDeviceQuantityNotBetween(Integer value1, Integer value2) {
            addCriterion("device_quantity not between", value1, value2, "deviceQuantity");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeIsNull() {
            addCriterion("device_type is null");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeIsNotNull() {
            addCriterion("device_type is not null");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeEqualTo(Integer value) {
            addCriterion("device_type =", value, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeNotEqualTo(Integer value) {
            addCriterion("device_type <>", value, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeGreaterThan(Integer value) {
            addCriterion("device_type >", value, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("device_type >=", value, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeLessThan(Integer value) {
            addCriterion("device_type <", value, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeLessThanOrEqualTo(Integer value) {
            addCriterion("device_type <=", value, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeIn(List<Integer> values) {
            addCriterion("device_type in", values, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeNotIn(List<Integer> values) {
            addCriterion("device_type not in", values, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeBetween(Integer value1, Integer value2) {
            addCriterion("device_type between", value1, value2, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("device_type not between", value1, value2, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceSpecificationIsNull() {
            addCriterion("device_specification is null");
            return (Criteria) this;
        }

        public Criteria andDeviceSpecificationIsNotNull() {
            addCriterion("device_specification is not null");
            return (Criteria) this;
        }

        public Criteria andDeviceSpecificationEqualTo(Integer value) {
            addCriterion("device_specification =", value, "deviceSpecification");
            return (Criteria) this;
        }

        public Criteria andDeviceSpecificationNotEqualTo(Integer value) {
            addCriterion("device_specification <>", value, "deviceSpecification");
            return (Criteria) this;
        }

        public Criteria andDeviceSpecificationGreaterThan(Integer value) {
            addCriterion("device_specification >", value, "deviceSpecification");
            return (Criteria) this;
        }

        public Criteria andDeviceSpecificationGreaterThanOrEqualTo(Integer value) {
            addCriterion("device_specification >=", value, "deviceSpecification");
            return (Criteria) this;
        }

        public Criteria andDeviceSpecificationLessThan(Integer value) {
            addCriterion("device_specification <", value, "deviceSpecification");
            return (Criteria) this;
        }

        public Criteria andDeviceSpecificationLessThanOrEqualTo(Integer value) {
            addCriterion("device_specification <=", value, "deviceSpecification");
            return (Criteria) this;
        }

        public Criteria andDeviceSpecificationIn(List<Integer> values) {
            addCriterion("device_specification in", values, "deviceSpecification");
            return (Criteria) this;
        }

        public Criteria andDeviceSpecificationNotIn(List<Integer> values) {
            addCriterion("device_specification not in", values, "deviceSpecification");
            return (Criteria) this;
        }

        public Criteria andDeviceSpecificationBetween(Integer value1, Integer value2) {
            addCriterion("device_specification between", value1, value2, "deviceSpecification");
            return (Criteria) this;
        }

        public Criteria andDeviceSpecificationNotBetween(Integer value1, Integer value2) {
            addCriterion("device_specification not between", value1, value2, "deviceSpecification");
            return (Criteria) this;
        }

        public Criteria andDeviceOptionIsNull() {
            addCriterion("device_option is null");
            return (Criteria) this;
        }

        public Criteria andDeviceOptionIsNotNull() {
            addCriterion("device_option is not null");
            return (Criteria) this;
        }

        public Criteria andDeviceOptionEqualTo(Integer value) {
            addCriterion("device_option =", value, "deviceOption");
            return (Criteria) this;
        }

        public Criteria andDeviceOptionNotEqualTo(Integer value) {
            addCriterion("device_option <>", value, "deviceOption");
            return (Criteria) this;
        }

        public Criteria andDeviceOptionGreaterThan(Integer value) {
            addCriterion("device_option >", value, "deviceOption");
            return (Criteria) this;
        }

        public Criteria andDeviceOptionGreaterThanOrEqualTo(Integer value) {
            addCriterion("device_option >=", value, "deviceOption");
            return (Criteria) this;
        }

        public Criteria andDeviceOptionLessThan(Integer value) {
            addCriterion("device_option <", value, "deviceOption");
            return (Criteria) this;
        }

        public Criteria andDeviceOptionLessThanOrEqualTo(Integer value) {
            addCriterion("device_option <=", value, "deviceOption");
            return (Criteria) this;
        }

        public Criteria andDeviceOptionIn(List<Integer> values) {
            addCriterion("device_option in", values, "deviceOption");
            return (Criteria) this;
        }

        public Criteria andDeviceOptionNotIn(List<Integer> values) {
            addCriterion("device_option not in", values, "deviceOption");
            return (Criteria) this;
        }

        public Criteria andDeviceOptionBetween(Integer value1, Integer value2) {
            addCriterion("device_option between", value1, value2, "deviceOption");
            return (Criteria) this;
        }

        public Criteria andDeviceOptionNotBetween(Integer value1, Integer value2) {
            addCriterion("device_option not between", value1, value2, "deviceOption");
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