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
    <title>添加用户</title>
</head>

<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}jsp/scripts/manage.js"></script>
<body>
<div style="padding-left: 19.5%;padding-top: 1.5%">
	<table border="0" width="600px" align="center">
		<tr>
			<td align="center" style="font-size: 24px; color: #666">员工添加</td>
		</tr>
		<tr>
			<td align="right">
                <button onclick="transandjoindatecommit()"> 提交 </button>
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
	<s:form id="saveForm" action="employee_saveEmployee" method="post" namespace="/" theme="simple">
		<table style="font-size:16px">
			<tr>
				<td align="right">员工姓名：</td>
				<td><s:textfield name="ename" /></td>
				<td align="right">性别：</td>
				<td><s:radio list="{'男','女'}" name="sex" /></td>
			</tr>
			<tr>
				<td align="right">出生日期：</td>
				<td align="right"><s:textfield id="birthday" name="birthday" placeholder="2000-01-01" /></td>
				<td align="right">入职日期：</td>
				<td><s:textfield id="joindate" name="joinDate" placeholder="2000-01-01" /></td>
			</tr>
			<tr>
				<td align="right">用户名：</td>
				<td><s:textfield name="username" /></td>
				<td align="right">密码：</td>
				<td><s:password name="password" /></td>
			</tr>
			<tr>
				<td align="right">编号：</td>
				<td><s:textfield name="eno" /></td>
				<td align="right">部门：</td>
				<td><s:select name="department.did" list="list" listKey="did" listValue="dname" headerKey="0" headerValue="--请选择--" /></td>
			</tr>
		</table>

	</s:form>

</div>
</body>
</html> 