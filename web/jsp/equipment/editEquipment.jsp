<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<jsp:include page="${pageContext.request.contextPath}/frame/daohang.jsp" />

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
<div style="padding-top: 1.5%;padding-left: 19.5%">
	<table border="0" width="600px">
		<tr>
			<td align="center" style="font-size: 24px; color: #666">物资修改</td>
		</tr>
		<tr>
			<td align="right">
			    <a href="javascript:document.getElementById('saveForm').submit()">保存</a>
				&nbsp;&nbsp; 
				<a href="javascript:history.go(-1)">退回 </a>
		    </td>
		</tr>
	</table>
	<br/>
	<br/>
	<!-- action对应一个action标签，id对应提交时的对应关系 -->
	<s:form id="saveForm" action="equipment_update" method="post" namespace="/" theme="simple">
		<s:hidden name="model.id" value="%{model.id}"></s:hidden>
		<s:property value="%{model}"/>
		<table style="font-size: 16px">
			<tr>
				<td align="right">物资名称：</td>
				<td><s:textfield value="%{model.equiName}" name="model.equiName" /></td>
			</tr>
			<tr>
				<td align="right">可否二次使用：</td>
				<td><select id="a5" name="twoUse">
					<option value="1">可以</option>
					<option value="0">不可以</option>
					</select>
				</td>
			</tr>
			<tr>
				<td align="right">捐赠公司：</td>
				<td><input type="text" name="equiCompany" value="<s:property value="model.equiCompany"/>" /></td>
			</tr>
			<tr>
				<td align="right">保质期：</td>
				<td><input type="text" name="endDate" value="<s:date name="model.endDate" format="yyyy-MM-dd"/>" /></td>
			</tr>
			<tr>
				<td align="right">物资数量：</td>
				<td><s:textfield value="%{model.equiNum}" name="model.equiNum" /></td>
				<tr/>
			<tr>
				<td align="right">备注：</td>
				<td><s:textfield value="%{model.remark}" name="model.remark" showPassword="true"/></td>
			</tr>
			<tr>
				<td align="right">物资分类：</td>
				<td>
				    <s:select name="model.dscription.descid" headerKey="0" value="%{model.dscription.descid}" headerValue="--请选择--" list="%{#session.equipClass}" listKey="descid" listValue="description" />
				</td>
			</tr>
		</table>
	</s:form>
</div>
</body>
</html> 