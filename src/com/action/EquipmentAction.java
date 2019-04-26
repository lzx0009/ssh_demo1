package com.action;

import com.entity.Dscription;
import com.entity.EquipmentEntry;
import com.entity.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.DscriptionService;
import com.service.EquipmentService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class EquipmentAction extends ActionSupport implements ModelDriven<EquipmentEntry> {

    private EquipmentEntry equipmentEntry = new EquipmentEntry();

    private EquipmentService equipmentService;


    private DscriptionService dscriptionService;

    public void setDscriptionService(DscriptionService dscriptionService) {
        this.dscriptionService = dscriptionService;
    }

    private Map<String,Object> map;

    public Map<String, Object> getMap() {
        return map;
    }

    public void setMap(Map<String, Object> map) {
        this.map = map;
    }

    /**
     * 逻辑层注入
     * @param equipmentService
     */
    public void setEquipmentService(EquipmentService equipmentService) {
        this.equipmentService = equipmentService;
    }

    private int currPage=1;

    public void setCurrPage(int currPage) {
        this.currPage = currPage;
    }

    @Override
    public EquipmentEntry getModel() {
        return equipmentEntry;
    }

    public String findAll(){
        PageBean<EquipmentEntry> pageBean = equipmentService.findByPage(currPage);
        ActionContext.getContext().getValueStack().push(pageBean);

        List<Dscription> dscription = dscriptionService.findClass();
        ActionContext.getContext().getValueStack().set("list_dscription", dscription);

        return "findAll";
    }

    /**
     * 打开物资新增界面，注入分类下拉框参数
     * @return
     */
    public String add(){
        //将物资类别放入下拉框
        List<Dscription> dscription = dscriptionService.findClass();
        ActionContext.getContext().getValueStack().set("list_dscription",dscription);
        return "goAddEquipment";
    }

    /**
     * 物资新增保存
     */
    public String save(){
        equipmentService.save(equipmentEntry);
        return "addEquipmentSuccess";

    }

    /**
     * 进入物资修改
     */
    public String edit(){
        equipmentEntry = equipmentService.edit(equipmentEntry.getId());
        List<Dscription> dscription = dscriptionService.findClass();
        ActionContext.getContext().getSession().put("equipClass",dscription);
        return "goEditEquipment";
    }

    public String update(){
        equipmentService.updateEquipment(equipmentEntry);
        return "updateSuccess";
    }

    /**
     * 物资申请
     */
    public String borrow(){
        map = new HashMap<String, Object>();
        map.put("msg","ok");
        map.put("tag",true);
        System.out.println("当前总数："+equipmentEntry.getEquiNum()+equipmentEntry.getId()+"===================================");
        equipmentService.borrow(equipmentEntry.getEquiNum(),equipmentEntry.getId());

        return "success";
    }

}
