<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<style type="text/css">
body {
	font-size: 20px;
	padding-bottom: 40px;
	background-color: #white;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) {
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}

.btn {
	position: absolute;
	top: 30%;
	left: 40%;
	color: blue;
	font-size: 20px;
}
</style>
<script type="text/javascript">
			function checkInput() {
				var name = document.form1.name1.value;
				var age = document.form1.age.value;
				var a =isNaN(age);
				if(name == "") {
					alert("请输入姓名!");
					return false;
				} else if(age == "") {
					alert("请输入年龄!");
					return false;
				} else if(a){
				alert("年龄有误!");
					return false;
				}else{
				return true;
				}
			}
		</script>

</head>

<body>
	<form name="form1" action="updataStudent.action" method="get"
		onsubmit="return checkInput()" enctype="multipart/form-data">
		<span>修改学生:</span><input style="font-size: 20px;" type="text"
			name="s.id" value="${param.id }" readonly="readonly">
		<table class="table1"
			style="margin-left:10px;margin-top:3px; font-size: 20px;">
			<tr>
				<td class="tableleft">新的姓名</td>
				<td><input type="text" name="s.name" value="${param.name }" id="name1" />
					<!-- disabled -->
				</td>
				<td class="tableleft">年龄</td>
				<td><input type="text" name="s.age" value="${param.age }" id="age"/></td>
			</tr>
			<br>
			<tr>
				<br>
				<td width="10%" class="tableleft">学生班级</td>
				<td><select name="s.grade">
						<option value='java' />&nbsp;Java
						<option value='Android' />&nbsp;Android
						<option value='PHP' />&nbsp;PHP
						<option value='HTML' />&nbsp;HTML
						<option value='C' />&nbsp;C
				</select>
				<td width="10%" class="tableleft">学生性别</td>
				<td><select name="s.gender" value="${param.gender }">
						<option value='female' />&nbsp;female
						<option value='male' />&nbsp;male
				</select>
				</td>
			</tr>

		</table>
		<br /> <br /> <br /> <br />
		<input type="submit" value="提交" class="btn">
	</form>
</body>

</html>