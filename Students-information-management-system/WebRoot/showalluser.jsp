<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'ShowAllStudent.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="content_Type" content="text/html;charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<style>
.img1:hover {
	width: 100px;
	height: 100px;
}
</style>

</head>

<body>
	<font color="#777777"><strong style="font-size: 20px">管理员信息：</strong>
	</font>
	<br>
	<table class="table table-bordered table-hover definewidth m10">
		<thead class="thead1">
			<tr>
				<th>用户名</th>
				<th>密码</th>
				<th>姓名</th>
				<th>id</th>
				<th colspan="2">操作</th>
			</tr>
		</thead>
		<c:forEach items="${lists }" var="item">
			<tr>
				<td><c:out value="${item.username }"></c:out>
				<td><c:out value="${item.password }"></c:out>
				<td><c:out value="${item.name }"></c:out>
				<td><c:out value="${item.id }"></c:out>
				</td>
				
				<td><a onclick="return confirm('确认删除？');" href="deleteUser.action?id=<c:out value="${item.id}"></c:out>"
					class="a2">删除</a>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="updateuser.jsp?name=<c:out value="${item.name }&username=${item.username }&id=${item.id}&password=${item.password }"></c:out>"
					class="a2">修改信息</a>
				</td>
			</tr>

		</c:forEach>
	</table>
</body>
</html>
