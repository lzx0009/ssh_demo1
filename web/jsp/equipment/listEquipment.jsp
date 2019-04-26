<%--
  Created by IntelliJ IDEA.
  User: 李志轩
  Date: 2019/3/17
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="${pageContext.request.contextPath}/frame/daohang.jsp"/>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%--
<jsp:include page="${pageContext.request.contextPath}/frame_top.jsp"/>
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="../../js/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/jsp/scripts/manage.js" type="text/javascript"></script>
<html>
<head>
<title>所有物资</title>
<base href="<%=basePath%>">
</head>
<body>
<div id="posi" style="padding-left: 19.5%;padding-top: 1.5%">
    <h1 align="center">新到物资</h1>
    <span></span>
    <s:select id="selec" name="description.descid" list="list_dscription" listKey="did" listValue="description" headerKey="0" headerValue="--请选择--" onchange="" />
<br/>
    <table id="listEquip" align="center" class="bottom-right" border="1" width="80%">
        <thead>
            <tr>
                <th width="100" align="center">序号</th>
                <th width="250" align="center">物资分类</th>
                <th width="250" align="center">物资名称</th>
                <th width="130" align="center">物资总量</th>
                <th width="350" align="center">捐赠单位</th>
                <th width="200" align="center">二次资源</th>
                <th width="200" align="center">保质期</th>
                <th width="250" align="center">备注</th>
                <th width="150" align="center">操作</th>
                <s:if test="%{#session.existEmployee.user_type==1}">
                    <th width="200" align="center">编辑</th>
                </s:if>
            </tr>
        </thead>
        <tbody>
            <s:iterator value="list" var="v" status="num">
                <s:if test="#num.odd">
                    <tr style="background-color: #9acfea">
                </s:if>
                <s:else>
                    <tr>
                </s:else>
                        <td align="center"><s:property value="#num.count"/> </td>
                        <td align="center"><s:property value="dscription.description"/> </td>
                        <td><s:property value="equiName"/> </td>
                        <td align="center" id="num"><s:property value="#v.equiNum"/></td>
                        <td><s:property value="equiCompany"/></td>
                        <td align="center"><s:if test="twoUse==1">
                                <s:property value="'是'"/>
                            </s:if>
                            <s:else>
                                <s:property value="'否'"/>
                            </s:else>
                        </td>
                        <td align="center"><s:date name="endDate" format="yyyy-MM-dd"/> </td>
                        <td><textarea rows="" cols="" style="width: 250px;height: 25px"><s:property value="remark"/></textarea> </td>
                        <td align="center"><button onclick="borrow(<s:property value="equiNum"/>,<s:property value="#num.count"/>,<s:property value="id"/> )">提交 </button> </td>
                        <s:if test="%{#session.existEmployee.user_type==1}">
                            <td align="center"><button><a href="equipment_edit.action?id=<s:property value="id"/> ">编辑</a> </button></td>
                        </s:if>
                    </tr>
            </s:iterator>
        </tbody>
    </table>
    <br/>

    <script type="text/javascript">

    </script>
    <table border="0" cellspacing="0" cellpadding="0" width="900px">
    <%--翻页模块--%>
                <tr>
                    <td align="right">
                    <span>
                    第<s:property value="currPage" />/<s:property value="totalPage" />页
                    </span>
                    &nbsp;&nbsp;
                    <span>
                    总记录数：<s:property value="totalCount" />&nbsp;&nbsp;
                    每页显示:<s:property value="pageSize" /></span>&nbsp;&nbsp;
                    <span>
                    <s:if test="currPage != 1">
                        <a href="equipment_findAll.action?currPage=1">[首页]</a>&nbsp;&nbsp;
                        <a href="equipment_findAll.action?currPage=<s:property value="currPage-1"/>">[上一页]</a>&nbsp;&nbsp;
                    </s:if>
                    <s:if test="currPage != totalPage">
                        <a href="equipment_findAll.action?currPage=<s:property value="currPage+1"/>">[下一页]</a>&nbsp;&nbsp;
                        <a href="equipment_findAll.action?currPage=<s:property value="totalPage"/>">[尾页]<s:property value="totalPage"/></a>&nbsp;&nbsp;
                    </s:if>
                    </span>
                    </td>
                </tr>

    </table>

</div>
</body>
</html>