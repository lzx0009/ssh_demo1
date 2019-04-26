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
    <title>物资新增</title>
</head>
<
<base href="${pageContext.request.contextPath}">
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}jsp/scripts/manage.js"></script>
<body>
<div style="padding-left: 19.5%;padding-top: 1.5%">
	<table border="0" width="600px" align="center">
		<tr>
			<td align="center" style="font-size: 24px; color: #666">物资新增</td>
		</tr>
		<tr>
			<td align="right">
                &nbsp;&nbsp;
                <button onclick="save()">保存</button>
				&nbsp;&nbsp; 
				<button onclick="callback()">退回 </button>
		   </td>
		</tr>
	</table>
	<br/>
	<br/>
	<!-- action对应一个action标签，id对应提交时的对应关系 -->
	<s:form id="saveForm" action="equipment_save" method="post" namespace="/" theme="simple">
		<table style="font-size:16px">
			<tr>
				<td align="right">物资名称：</td>
				<td><s:textfield id="a1" name="model.equiName" /></td>
			</tr>
			<tr>
				<td align="right">物资数量：</td>
				<td><s:textfield id="a2" name="model.equiNum" /></td>
				<%--<td><s:radio list="{'男','女'}" name="sex" /></td>--%>
			</tr>
			<tr>
				<td align="right">供给渠道：</td>
				<td><s:textfield id="a3" name="model.equiCompany" placeholder="供给渠道" /></td>
			</tr>
			<tr>
				<td align="right">保质期：</td>
				<td><s:textfield name="model.endDate" id="a4" placeholder="yyyymmdd"/></td>
				<%--<td><s:date id="a4" name="enddata" format="yyyy-MM-dd"/></td>--%>
				<%--<input type="text" value="<s:date name="birthday" format="yyyy-MM-dd" />" />--%>
			</tr>
			<tr>
				<td align="right">可否二次使用：</td>
				<td><select id="a5" name="twoUse">
					<option value="1">可以</option>
					<option value="0">不可以</option>
				</select></td>
				<%--<td><s:select id="a5" name="twouse" list="#{1:'可以',2:'不可以'}" listKey="key" listValue="value" headerKey="0" headerValue="请选择"></s:select>--%>
				<%--</td>--%>
			</tr>
			<tr>
			<td align="right">所属类别：</td>
			<td><s:select name="model.dscription.descid" list="list_dscription" listKey="descid" listValue="description" headerKey="0" headerValue="--请选择--" onchange="" /></td>
			</tr>
			<tr>
			<td align="right">备注：</td>
			<td><textarea name="remark" id="" cols="30" rows="3"></textarea></td>
			</tr>
		</table>

	</s:form>

</div>
</body>
</html> 