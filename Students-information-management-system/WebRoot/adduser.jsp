<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.css" />
<style type="text/css">
body {
	font-size: 20px;
	padding-bottom: 40px;
	background-color: white;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) { /* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}

.btn {
	position: absolute;
	top: 50%;
	left: 40%;
	color: blue;
	font-size: 20px;
}
</style>
<script type="text/javascript">
			function checkInput() {
				var username = document.form1.username.value;
				var name = document.form1.name.value;
				var password = document.form1.password.value;
				var password2 = document.form1.password2.value;
				if(username == "") {
					alert("请输入用户名!");
					return false;
				} else if(name == "") {
					alert("请输入姓名!");
					return false;
				} else if(password == "") {
					alert("请输入密码!");
					return false;
				} else if(password2 == "") {
					alert("请确认密码!");
					return false;
				} else if(password!=password2){
					alert("两次密码不一致!");
					return false;
				}else
				{
					return true;
				}
			}
		</script>
</head>

<body>
	<strong style="font-size: 20px">添加用户：</strong>
	<form name="form1" action="addUser.action" method="post"
		onsubmit="return checkInput()">
		<table class="table table-bordered table-hover m10"
			style="margin-left:10px;margin-top:3px;">
			<tr>
				<td class="tableleft">用户名</td>
				<td><input type="text" name="user.username" id="username" />
				</td>
				<td class="tableleft">姓名</td>
				<td><input type="text" name="user.name" id="name" />
				</td>
			</tr>
			<br>
			<tr>
				<td width="10%" class="tableleft">密码</td>
				<td><input type="password" name="user.password" id="password" />
				</td>
				<td width="10%" class="tableleft">确认密码</td>
				<td><input type="password" name="user.password2" id="password2" />
				</td>
				<input type="submit" value="提交" class="btn" />
				</form>
				<p style="color: red">${error }</p>
</body>

</html>