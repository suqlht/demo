package xyz.falado.whs.model;

import java.io.Serializable;
import java.util.Date;

public class WHSEmployee implements Serializable {
    private Long id;

    private String name;

    private Date birthday;

    private Integer age;

    private String sex;

    private Integer workYears;

    private String skill;

    private Integer status;

    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    private String employeeId;



    private Integer groupId;

    public Integer getGroupId() {
        return groupId;
    }

    public void setGroupId(Integer groupId) {
        this.groupId = groupId;
    }
    private static final long serialVersionUID = 1L;

    public WHSEmployee(Long id, String name, Date birthday, Integer age, String sex, Integer workYears, String skill, Integer status,String employeeId) {
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.age = age;
        this.sex = sex;
        this.workYears = workYears;
        this.skill = skill;
        this.status = status;
        this.employeeId = employeeId;
    }

    public WHSEmployee() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Integer getWorkYears() {
        return workYears;
    }

    public void setWorkYears(Integer workYears) {
        this.workYears = workYears;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill == null ? null : skill.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}