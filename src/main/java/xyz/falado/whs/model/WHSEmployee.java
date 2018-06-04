package xyz.falado.whs.model;

import java.io.Serializable;
import java.util.Date;

public class WHSEmployee implements Serializable {
    private Integer id;

    private String name;

    private Date birthday;

    private Integer age;

    private String sex;

    private Integer workYears;

    private String skill;

    private Integer status;

    private static final long serialVersionUID = 1L;

    public WHSEmployee(Integer id, String name, Date birthday, Integer age, String sex, Integer workYears, String skill, Integer status) {
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.age = age;
        this.sex = sex;
        this.workYears = workYears;
        this.skill = skill;
        this.status = status;
    }

    public WHSEmployee() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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