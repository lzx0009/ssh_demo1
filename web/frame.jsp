<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- 使用strut2标签库 -->
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<frameset rows="150,*" framespacing="0px" frameborder="no">
	<frame name="top"
		src="${pageContext.request.contextPath }/frame/top.jsp"/>
	<%--<frameset cols="17%,*" id="main" framespacing="0px" frameborder="no">--%>

		<%--<frame name="left"--%>
			<%--src="${pageContext.request.contextPath }/frame/left.jsp">--%>
		<frame name="right"
			src="${pageContext.request.contextPath }/first.jsp"/>
	<%--</frameset>--%>
</frameset>



<!--
<frameset rows="90,*" framespacing="0px" frameborder="no">
    <frame name="top" src="${pageContext.request.contextPath }/frame/top.jsp" scrolling="no">
    <frameset cols="170,90" id="main" framespacing="0px" frameborder="no">
   	<frame name="left" src="${pageContext.request.contextPath }/frame/left.jsp" scrolling="no">
  	<frame name="right" src="${pageContext.request.contextPath }/frame/right.jsp" scrolling="no">
   </frameset>
</frameset>
 -->







<%--<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" language="java" %>--%>

<%--<%@ taglib prefix="s" uri="/struts-tags" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html xmlns="http://www.w3.org/1999/xhtml">--%>
<%--<head>--%>
	<%--<meta charset="utf-8" />--%>
	<%--<meta name="viewport" content="width=device-width, initial-scale=1.0" />--%>
	<%--<title>救援装备物资管理系统</title>--%>

	<%--<!-- BOOTSTRAP STYLES-->--%>
	<%--<link href="css/bootstrap.css" rel="stylesheet" />--%>
	<%--<!-- FONTAWESOME STYLES-->--%>
	<%--<link href="css/font-awesome.css" rel="stylesheet" />--%>
	<%--<!--CUSTOM BASIC STYLES-->--%>
	<%--<link href="css/basic.css" rel="stylesheet" />--%>
	<%--<!--CUSTOM MAIN STYLES-->--%>
	<%--<link href="css/custom.css" rel="stylesheet" />--%>
	<%--<!-- GOOGLE FONTS-->--%>
	<%--<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />--%>
<%--</head>--%>
<%--<body>--%>
<%--<div id="wrapper">--%>
	<%--<nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">--%>
		<%--<div class="navbar-header">--%>
			<%--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">--%>
				<%--<span class="sr-only">Toggle navigation</span>--%>
				<%--<span class="icon-bar">11</span>--%>
				<%--<span class="icon-bar">22</span>--%>
				<%--<span class="icon-bar">33</span>--%>
			<%--</button>--%>
		<%--</div>--%>

		<%--<div class="header-right">--%>

			<%--<a  class="btn btn-info" title="New Message"><b>30 </b><i class="fa fa-envelope-o fa-2x"></i></a>--%>
			<%--<a  class="btn btn-primary" title="New Task"><b>40 </b><i class="fa fa-bars fa-2x"></i></a>--%>
			<%--<a href="../index.jsp" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>--%>

		<%--</div>--%>
	<%--</nav>--%>
	<%--<!-- /. NAV TOP  -->--%>
	<%--<nav class="navbar-default navbar-side" role="navigation">--%>
		<%--<div class="sidebar-collapse">--%>
			<%--<ul class="nav" id="main-menu">--%>
				<%--<li>--%>
					<%--<div class="user-img-div">--%>
						<%--<img src="photo.png" class="img-thumbnail" />--%>

						<%--<div class="inner-text">--%>
							<%--救援物资管理系统--%>
							<%--<br />--%>
							<%--<small>灾难无情人有情 </small>--%>
						<%--</div>--%>
					<%--</div>--%>
				<%--</li>--%>
				<%--<li>--%>
					<%--<a class="active-menu" href="success.jsp"><i class="fa fa-dashboard "></i>首页</a>--%>
				<%--</li>--%>
				<%--<li>--%>

					<%--<a href="backBook.jsp?user.username=${user.username}"><i class="fa fa-flash "></i>物资归还</a>--%>
				<%--</li>--%>
				<%--<li>--%>

					<%--<a href="reBorrow.jsp?user.username=${user.username}"><i class="fa fa-flash "></i>延迟归还</a>--%>
				<%--</li>--%>
				<%--<li>--%>
					<%--<a href="#"><i class="fa fa-bicycle "></i>更多信息 <span class="fa arrow"></span></a>--%>
					<%--<ul class="nav nav-second-level">--%>

						<%--<li>--%>

							<%--<a href="user_getInfo.action?user.username=${user.username}"><i class="fa fa-desktop "></i>用户信息</a>--%>
						<%--</li>--%>
						<%--<li>--%>

							<%--<a href="listBook.action?user.username=${user.username}"><i class="fa fa-code "></i>*物资信息</a>--%>
						<%--</li>--%>


					<%--</ul>--%>
				<%--</li>--%>
				<%--<li>--%>

					<%--<a href="user_get.action?user.username=${user.username}"><i class="fa fa-anchor "></i>支付</a>--%>
				<%--</li>--%>

				<%--<li>--%>

					<%--<a href="employee_findAll.action">用户信息tag</a>--%>
					<%--<a href="index.jsp"><i class="fa fa-sign-in "></i>登录</a>--%>
				<%--</li>--%>

			<%--</ul>--%>

		<%--</div>--%>

	<%--</nav>--%>
	<%--&lt;%&ndash;<!-- /. NAV SIDE  -->&ndash;%&gt;--%>
	<%--<div id="page-wrapper">--%>
		<%--<div id="page-inner">--%>
			<%--&lt;%&ndash;<div class="row">&ndash;%&gt;--%>
			<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
			<%--&lt;%&ndash;<!-- /. ROW  -->&ndash;%&gt;--%>
			<%--&lt;%&ndash;<div class="row">&ndash;%&gt;--%>
			<%--&lt;%&ndash;<div class="col-md-4">&ndash;%&gt;--%>
			<%--&lt;%&ndash;<div class="main-box mb-red">&ndash;%&gt;--%>
			<%--&lt;%&ndash;<a href="#">&ndash;%&gt;--%>
			<%--&lt;%&ndash;<i class="fa fa-bolt fa-5x"></i>&ndash;%&gt;--%>
			<%--&lt;%&ndash;<h5>闪电查找</h5>&ndash;%&gt;--%>
			<%--&lt;%&ndash;</a>&ndash;%&gt;--%>
			<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
			<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
			<%--&lt;%&ndash;<div class="col-md-4">&ndash;%&gt;--%>
			<%--&lt;%&ndash;<div class="main-box mb-dull">&ndash;%&gt;--%>
			<%--&lt;%&ndash;<a href="#">&ndash;%&gt;--%>
			<%--&lt;%&ndash;<i class="fa fa-plug fa-5x"></i>&ndash;%&gt;--%>
			<%--&lt;%&ndash;<h5>联网查询</h5>&ndash;%&gt;--%>
			<%--&lt;%&ndash;</a>&ndash;%&gt;--%>
			<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
			<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
			<%--&lt;%&ndash;<div class="col-md-4">&ndash;%&gt;--%>
			<%--&lt;%&ndash;<div class="main-box mb-pink">&ndash;%&gt;--%>
			<%--&lt;%&ndash;<a href="#">&ndash;%&gt;--%>
			<%--&lt;%&ndash;<i class="fa fa-dollar fa-5x"></i>&ndash;%&gt;--%>
			<%--&lt;%&ndash;<h5>科学计费</h5>&ndash;%&gt;--%>
			<%--&lt;%&ndash;</a>&ndash;%&gt;--%>
			<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
			<%--&lt;%&ndash;</div>&ndash;%&gt;--%>

			<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
			<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
			<%--&lt;%&ndash;<!-- /. PAGE INNER  -->&ndash;%&gt;--%>
		<%--</div>--%>
		<%--&lt;%&ndash;<!-- /. PAGE WRAPPER  -->&ndash;%&gt;--%>
	<%--</div>--%>

	<%--<!-- /. FOOTER  -->--%>
	<%--<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->--%>
	<%--<!-- JQUERY SCRIPTS -->--%>
	<%--<script src="js/jquery-3.3.1.min.js"></script>--%>
	<%--<!-- BOOTSTRAP SCRIPTS -->--%>
	<%--<script src="js/bootstrap.js"></script>--%>
	<%--<!-- METISMENU SCRIPTS -->--%>
	<%--<script src="js/jquery.metisMenu.js"></script>--%>
	<%--<!-- CUSTOM SCRIPTS -->--%>
	<%--<script src="js/custom.js"></script>--%>



<%--</body>--%>
<%--</html>--%>
