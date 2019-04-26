package com.entity;

import javax.persistence.*;
import java.util.Date;
import java.util.Objects;

@Entity
@Table(name = "equipout", schema = "ssh_employee", catalog = "")
public class EquipoutEntity {
    private int equipid;
    private int id;
    private int equipOutNum;
    private Date outDate;
    private String user;
    private String equipName;

    @Basic
    @Column(name = "equipid", nullable = false)
    public int getEquipid() {
        return equipid;
    }

    public void setEquipid(int equipid) {
        this.equipid = equipid;
    }

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "equip_out_num", nullable = false)
    public int getEquipOutNum() {
        return equipOutNum;
    }

    public void setEquipOutNum(int equipOutNum) {
        this.equipOutNum = equipOutNum;
    }

    @Basic
    @Column(name = "out_date", nullable = false)
    public Date getOutDate() {
        return outDate;
    }

    public void setOutDate(Date outDate) {
        this.outDate = outDate;
    }

    @Basic
    @Column(name = "user", nullable = false, length = 20)
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    @Basic
    @Column(name = "equip_name", nullable = false, length = 50)
    public String getEquipName() {
        return equipName;
    }

    public void setEquipName(String equipName) {
        this.equipName = equipName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EquipoutEntity that = (EquipoutEntity) o;
        return equipid == that.equipid &&
                id == that.id &&
                equipOutNum == that.equipOutNum &&
                Objects.equals(outDate, that.outDate) &&
                Objects.equals(user, that.user) &&
                Objects.equals(equipName, that.equipName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(equipid, id, equipOutNum, outDate, user, equipName);
    }
}
