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
<div  style="padding-left: 20%">
	<div><h1>地震急救小知识</h1></div>
	<div style="font-size: 25px;font-weight: initial">
		1.地震发生时，如果你在自己家里，你可以选择：</br>
		&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;地震预警时间短暂，室内避震更具有现实性，而室内房屋倒塌后形成的三角空间，往往是人们得以幸存的相对安全地点，是较好的“避震空间”。这主要是指大块倒塌体与支撑物构成的空间
		室内易于形成三角空间的地方是炕沿下、坚固家具的附近；内墙墙根、墙角；厨房、厕所、储藏室等空间小的地方</br></br>
		2.地震发生时，如果你在户外，你可以选择：</br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;就地选择开阔地避震；蹲下或趴下，以免摔倒；不要乱跑，避开人多的地方，不要随便返回室内；避开高大建筑物，如楼房特别是有玻璃幕墙的建筑、过街桥、立交桥、高烟囱、水塔下；避开危险物、高耸或悬挂物如变压器、电线杆、路灯、广告牌、吊车等</br></br>
		3.地震发生时，如果你在学校。你可以选择：</br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;躲避在课桌下、讲台旁，教学楼内的学生可以到空间小、有管道支撑的房间里，地震来了要听老师指挥，有秩序地离开，不要慌乱，更不能跳楼</br></br>
		4.地震发生时，如果你在街上行走，你可以选择：</br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在街上行走时，最好将身边的书包或柔软的物顶在头上，无物品时也可用手护在头上，尽可能作好自我防御的准备，保持镇静，并迅速离开电线杆和围墙，跑向比较开阔的地区躲避</br></br>
	</div>
</div>
</body>
</html> 