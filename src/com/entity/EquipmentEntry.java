package com.entity;

import java.io.Serializable;
import java.util.Date;


/*
@Table(name = "equipment", schema = "ssh_employee", catalog = "")
*/
public class EquipmentEntry implements Serializable {

    private Integer id;
    private Dscription dscription;
    private String equiName;
    private Integer equiNum;
    private String equiCompany;
    private Integer twoUse;
    private Date endDate;
    private String remark;

    public EquipmentEntry() {
    }

    public EquipmentEntry(Integer id, Dscription dscription, String equiName, Integer equiNum, String equiCompany, Integer twoUse, Date endDate, String remark) {
        this.id = id;
        this.dscription = dscription;
        this.equiName = equiName;
        this.equiNum = equiNum;
        this.equiCompany = equiCompany;
        this.twoUse = twoUse;
        this.endDate = endDate;
        this.remark = remark;
    }

    public Dscription getDscription() {
        return dscription;
    }

    public void setDscription(Dscription dscription) {
        this.dscription = dscription;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getEquiName() {
        return equiName;
    }

    public void setEquiName(String equiName) {
        this.equiName = equiName;
    }

    public Integer getEquiNum() {
        return equiNum;
    }

    public void setEquiNum(Integer equiNum) {
        this.equiNum = equiNum;
    }

    public String getEquiCompany() {
        return equiCompany;
    }

    public void setEquiCompany(String equiCompany) {
        this.equiCompany = equiCompany;
    }

    public Integer getTwoUse() {
        return twoUse;
    }

    public void setTwoUse(Integer twoUse) {
        this.twoUse = twoUse;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

//    @Override
////    public String toString() {
////        return "EquipmentEntry{" +
////                "id=" + id +
////                ", equiName='" + equiName + '\'' +
////                ", equiNum=" + equiNum +
////                ", equiCompany='" + equiCompany + '\'' +
////                ", twoUse=" + twoUse +
////                ", endDate=" + endDate +
////                ", remark='" + remark + '\'' +"equiclass="+dscription+
////                '}';
////    }


}
