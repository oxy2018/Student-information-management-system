<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.students.entity.*" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

<style type="text/css">
body {
	font-size: 20px;
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
</style>

</head>

<body>
<form name="form1" class="form-inline definewidth m20"
		action="selectStudent.action" method="get"
		onsubmit="return checkInput()">
		<font color="#777777"><strong>学生姓名：</strong> </font> <input
			type="text" name="name" id="menuname" class="abc input-default"
			placeholder="" value="">&nbsp;&nbsp; <input type="submit"
			class="btn btn-primary"></input> &nbsp;&nbsp;
	</form>
	
	<%
		Student s = (Student)request.getAttribute("student");
		if(s==null)
		{
			out.print("");
			}else{
			%>
		<font color="#777777"><strong>学生信息：</strong> </font>
		<table class="table table-bordered table-hover definewidth m10">
			<thead class="thead1">
				<tr>
					<th>姓名</th>
					<th>年龄</th>
					<th>性别</th>
					<th>班级</th>
				</tr>	
			</thead> 
			<tr>
				
				<td><c:out value="<%=s.getName() %>"></c:out></td>
			    <td><c:out value="<%=s.getAge() %>"></c:out></td>
				<td><c:out value="<%=s.getGender() %>"></c:out></td>
				<td><c:out value="<%=s.getGrade() %>"></c:out></td> 
				 
				
			</tr>
		</table>
			<%
		}
	 %>
	

</body>
</html>
