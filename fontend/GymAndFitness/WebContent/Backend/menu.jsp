<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

</head>
<body>
	<div class="container"> 
		<div class="btn-group-vertical">
			<a href="<%=request.getContextPath()%>/Backend/ManageUser/listUser.jsp"><button type="button" class="btn btn-secondary">Quản lý User</button></a>
			<a href="<%=request.getContextPath()%>/Backend/ManageCourse/listCourse.jsp"><button type="button" class="btn btn-secondary">Quản lý khóa học</button></a>
			<a><button type="button" class="btn btn-secondary">Quản lý bài viết</button></a>
			<a><button type="button" class="btn btn-secondary">Quản lý lịch làm việc</button></a>
			<a><button type="button" class="btn btn-secondary">Quản lý sản phẩm</button></a>
		</div>
	</div>
	
</body>
<style type="text/css">
	.container .btn-group-vertical a{
		width : 100%;
	}
	.container {
		text-align: left;
	}
</style>
</html>