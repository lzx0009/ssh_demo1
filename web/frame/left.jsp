<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@include file="right.jsp" %>
<%--<%--%>
	<%--String path = request.getContextPath();--%>
	<%--String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";--%>
<%--%>--%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>无标题文档</title>

</head>

<body style="background:#f0f9fd;">
<s:debug/>
<s:property value="#model.existEmployee.ename"/>
<s:if test="%{#session.existEmployee.user_type==1}">
<nav class="navbar-default navbar-side" role="navigation">
	<ll>
		<a href="employee_findAll.action">用户信息</a><br/>
	</ll>
	<ll>
		<a href="#">物资储备</a><br/>
	</ll>
	<ll>
		<a href="#">物资新增</a><br/>
	</ll>
	<ll>
		<a href="#">出库记录</a><br/>
	</ll>

</s:if>
<s:elseif test="%{#session.existEmployee.user_type==2}">
<ul>
	<ll>
		<a href="#">个人信息</a><br/>
	</ll>
	<ll>
		<a href="#">领取记录</a><br/>
	</ll>
	<ll>
		<a href="#">物资归还</a><br/>
	</ll>
</ul>
</s:elseif>
</nav>
</body>
</html>

<%--=================================================================================================================--%>

