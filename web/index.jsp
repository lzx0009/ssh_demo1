<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>登陆</title>
	<link type="text/css" href="${pageContext.request.contextPath}css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="${pageContext.request.contextPath}css/signin.css" rel="stylesheet">
<script>
	var msg = ${sessionScope.result};
	// if (msg==0){
	//     alert("登陆失败");
    //     // var error = $("<li>用户名或密码错误</li>");
    //     // $("#password").append(error);
    // }
</script>
</head>

<body>

	<div class="container">

		<form class="form-signin" action="employee_login" method="post" namespace="/">
			<h2 class="form-signin-heading">Please sign in</h2>
			<label  class="sr-only">username</label>
			<input name="Username" id="username" class="form-control" placeholder="用户名" required autofocus>
			<label class="sr-only">password</label>
			<input name="password" id="password" type="password" class="form-control" placeholder="密码" required>
			<s:fielderror value="username" ></s:fielderror>
			<%--<div class="checkbox">
				<label>
					<input type="checkbox" value="remember-me"> Remember me
				</label>
			</div>--%>
			<button class="btn btn-lg btn-primary btn-block" type="submit">登陆</button>
			<a class="bttn btn-lg btn-primary btn-block text-center" href="employee_goAddEmployee.action" role="button">注册</a>
		</form>

	</div>

<%--</div>--%>

<%--</s:form>--%>

</body>
</html>
