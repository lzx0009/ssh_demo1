<%--
  Created by IntelliJ IDEA.
  User: 李志轩
  Date: 19/4/19
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>菜鸟教程(runoob.com)</title>
    <style>
        body {
            position: relative;
            margin: 0;
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            width: 18%;
            background-color: #f1f1f1;
            position: fixed;
            height: 100%;
            overflow: auto;
        }

        li a {
            display: block;
            color: #000;
            padding: 8px 16px;
            text-decoration: none;
        }

        li a.active {
            background-color: #9acfea;
            color: white;
        }

        li a:hover:not(.active) {
            background-color: #555;
            color: white;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <ul>
            <s:if test="%{#session.existEmployee.user_type==1}">
                <li><a class="active" href="employee_findAll.action">用户信息</a></li>
                <li><a href="equipment_findAll">物资储备</a></li>
                <li><a href="equipment_add">物资新增</a></li>
                <li><a href="equipment_findAll">出库记录</a></li>
            </s:if>
            <s:elseif test="%{#session.existEmployee.user_type==2}">
                <s:property value="#session.existEmployee.ename"/>
                <li><a href="employee_findById.action?eid=<s:property value="#session.existEmployee.eid"/> ">个人信息</a></li>
                <li><a href="equipment_findAll">领取记录</a></li>
                <li><a href="equipment_findAll">物资归还</a></li>
            </s:elseif>
        </ul>
    </div>
</nav>
<%--<div style="margin-left:25%;padding:1px 16px;height:1000px;">--%>

<%--</div>--%>

</body>
</html>