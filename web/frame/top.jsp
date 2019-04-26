<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.div1 {
	padding-bottom: 10%;
	padding-left: 88%;
	font-size: 16px;
	color: black;
}
</style>
</head>

<body bgcolor="#f0f8ff">
<div style="padding-left: 25%;padding-top: 2%">
	<span style="font-size:52px; font-style: initial;">救援装备物资管理系统</span>
</div>
	<div class="div1">
		<span>欢迎您：<s:property value="#session.existEmployee.ename" /></span>
	</div>
</body>
</html>
