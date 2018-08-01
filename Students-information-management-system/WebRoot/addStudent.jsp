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
			var check=false;
				var name = document.getElementById("name").value;
				var age = document.getElementById("age").value;
				var a =isNaN(age);
				if(name == ""||name==null) {
					alert("姓名不能为空")
					
					return check;
				} else if(age == ""||age==null) {
					alert("年龄不能为空!")
					return check;
				} else if(a){
				alert("年龄错误!")
					return check;
				}else{
				check=true;
				return check;
				}
			}
		</script>
</head>

<body>
	<strong style="font-size: 20px">添加学生</strong>
	<form name="form1" action="addStudent.action" method="post"
		onsubmit="return checkInput()" enctype="multipart/form-data">
		<table class="table table-bordered table-hover m10"
			style="margin-left:10px;margin-top:3px;">
			<tr>
				<td class="tableleft">学生姓名</td>
				<td><input type="text" name="s.name" id="name" />
				</td>
				<td class="tableleft">年龄</td>
				<td><input type="text" name="s.age" id="age" />
				</td>
			</tr>
			
			<tr>
				
				<td width="10%" class="tableleft">班级</td>
				<td><select name="s.grade">
						<option value='java' />&nbsp;Java
						<option value='Android' />&nbsp;Android
						<option value='PHP' />&nbsp;PHP
						<option value='HTML' />&nbsp;HTML
						<option value='C' />&nbsp;C
						</select>
				<td width="10%" class="tableleft">性别</td>
				<td><select name="s.gender">
						<option value='male' />&nbsp;male
						<option value='female' />&nbsp;female
				</select> <br >
				
				</td>
			</tr>
		</table>
		<input type="submit" value="添加" class="btn">
	</form>
	<p style="color: red">${error}</p>
</body>

</html>