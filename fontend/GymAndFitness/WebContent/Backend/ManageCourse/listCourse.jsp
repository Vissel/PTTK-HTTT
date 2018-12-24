<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.CourseDAOImpl" %>
<%@page import="model.Course" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Backend/css/style.css">
<title>Danh sách Course</title>
</head>
<body>
<% 
String message = (String) request.getParameter("message");
	if(message != null){
 	switch(message){
 	case "cancel":
 	%>
 	<script type="text/javascript" >
			alert('Hủy chức năng thành công');
			</script>
 	<%break;
 	case "add":
 	 	%>
 	 	<script type="text/javascript" >
 				alert('Thêm user thành công');
 				</script>
 	 	<%break;
 	case "update":
 	 	%>
 	 	<script type="text/javascript" >
 				alert('Chỉnh sửa user thành công');
 				</script>
 	 	<%break;
 	case "delete":
 	 	%>
 	 	<script type="text/javascript" >
 				alert('Xóa user thành công');
 				</script>
 	 	<%break;
 	
 	default: break;}
 	%>
 	
 	<%} %>
	<h1>Quản lý khóa học</h1>
	<div class="row">
		<div class="col-sm-2" >
			<jsp:include page="../menu.jsp"></jsp:include>
		</div>
		<div class="col-sm-10">
			<a href="<%=request.getContextPath() %>/Backend/ManageUser/addUser.jsp" ><button type="button" id="button-create">Thêm khóa học</button></a>
			<div class="row">
				<div class="col-sm-4">
					<button type="button" class="btn btn-primary">Sao chép</button>
					<button type="button" class="btn btn-primary">Xuất ra
						excel</button>
					<button type="button" class="btn btn-primary">In</button>
				</div>
				<div class="col-sm-4">
				<form action="<%=request.getContextPath()%>/AUDUser?command=filter" method="post">
					<p>
						Lọc theo : <span> 
						<select style="width: 146px" name="typeUser">
								<option value="2">Học viên</option>
								<option value="3">Huấn luyện viên</option>
								<option value="4">Nhân viên</option>
						</select>
						</span>
						<span><button type="submit" id="button-filter">Lọc</button></span>
					</p>
				</form>
				</div>
				<div class="col-sm-4">
					<input type="text" width="265px" name="search"> 
					<span><button type="button" id="button-search">Tìm kiếm</button></span>
				</div>
			</div>
			<%CourseDAOImpl dao = new CourseDAOImpl();
				%>
			<table class="table table-bordered table-sm" style="text-align: center">
				<thead>
					<tr>
						<th>No</th>
						<th>Mã khóa học</th>
						<th>Tên khóa học</th>
						<th>Huấn luyện viên chính</th>
						<th>Thời gian bắt đầu</th>
						<th>Thời gian kết thúc</th>
						<th></th>
					</tr>
				</thead>
				
				
				<tbody>
				
					<% 
					List<Course> list = dao.listCourse();
					int index = 0;
					for(Course course : list){ 
						index++;%>
					<tr>
						<td><%=index %></td>
						<td><%=course.getCourseCode() %></td>
						<td><%=course.getCourseName() %></td>
						<td><%=course.getTrainerName() %></td>
						<td><%=course.getStartDate() %></td>
						<td><%=course.getEndDate()%></td>
						<td>
							<a href="<%=request.getContextPath() %>/Backend/ManageUser/editUser.jsp?userID=<%=course.getCourseID()%>"><button type="button" class="btn btn-primary">Sửa</button></a>
							<button onclick="delUser(<%=course.getCourseID() %>)" type="button" class="btn btn-danger" data-toggle="modal" data-target="#delete">Xóa</button>
						</td>
					</tr>
					<%} %>
				</tbody>
			</table>
		</div>
	</div>
	
	<!-- The modal -->
								<div class="modal fade" id="delete">
									<div class="modal-dialog modal-sm modal-dialog-centered">
							      		<div class="modal-content">
							      		 <!-- Modal Header -->
									        <div class="modal-header" style="justify-content: flex-end;padding:0">
									          <button type="button" class="btn btn-danger" data-dismiss="modal">&times;</button>
									        </div>
									      <!-- Modal body -->
									        <div class="modal-body">
									         <h4 style="padding-left: 25px">Xác nhận xóa User ?</h4>
									        </div>
									      <!-- Modal footer -->
									        <div class="modal-footer" style="justify-content: center">
									         	<button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button> 
									         	<a id="btn-del" class="btn btn-danger" >OK</a>
									        </div>
							      		</div>
							      	</div>
								</div>
<script type="text/javascript">
	function delUser(id){
	   $("#btn-del").attr("href","<%=request.getContextPath()%>/AUDUser?command=delete&userID="+id);
	}
</script>
</body>
<style type="text/css">

.row {
	margin-bottom: 10px;
	margin-top: 10px;
}

</style>

</html>