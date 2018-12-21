<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.UserDAOImpl" %>
<%@page import="model.Users" %>
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
<title>Danh sách User</title>
</head>
<body>
<% String message = (String) request.getParameter("message");
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
	<h1>Quản lý User</h1>
	<div class="row">
		<div class="col-sm-2" >
			<jsp:include page="../menu.jsp"></jsp:include>
		</div>
		<div class="col-sm-10">
			<a href="<%=request.getContextPath() %>/Backend/ManageUser/addUser.jsp" ><button type="button" id="button-create">Thêm User</button></a>
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
			<% UserDAOImpl dao = new UserDAOImpl();
				%>
			<table class="table table-bordered table-sm" style="text-align: center">
				<thead>
					<tr>
						<th>No</th>
						<th>Mã User</th>
						<th>Tên User</th>
						<th>Số điện thoại</th>
						<th>Email</th>
						<th>Địa chỉ</th>
						<th>Loại User</th>
						<th></th>
					</tr>
				</thead>
				
				
				<tbody>
				<% if(message != null && message.equals("filter")){
					String type = (String) request.getParameter("type");
					List<Users> listFilter = dao.filterUser(type);
					int index = 0;
					for(Users u : listFilter){ 
						index++;%>
					<tr>
						<td><%=index %></td>
						<td><%=u.getUserCode() %></td>
						<td><%=u.getName() %></td>
						<td><%=u.getPhone() %></td>
						<td><%=u.getEmail() %></td>
						<td><%=u.getAddress() %></td>
						<%switch(u.getRoleID()){ 
							case 1 :%>
						<td>Nhân viên</td>
						<%break;
							case 2:%>
						<td>Học viên </td>
						<%break;
							case 3 :%>
						<td>Huấn luyện viên</td>
						<%break;
							case 4:%>
						<td>Nhân viên </td>
						<%break;
							default:%>
							<td></td>
							
						<%break;} %>
						<td>
							<a href="<%=request.getContextPath() %>/Backend/ManageUser/editUser.jsp?userID=<%=u.getUserID()%>"><button type="button" class="btn btn-primary">Sửa</button></a>
							<button onclick="delUser(<%=u.getUserID() %>)" type="button" class="btn btn-danger" data-toggle="modal" data-target="#delete">Xóa</button>
						</td>
					</tr>
					<%}
					}else {%>
					
					<% 
					List<Users> list = dao.getAllUser();
					int index = 0;
					for(Users u : list){ 
						index++;%>
					<tr>
						<td><%=index %></td>
						<td><%=u.getUserCode() %></td>
						<td><%=u.getName() %></td>
						<td><%=u.getPhone() %></td>
						<td><%=u.getEmail() %></td>
						<td><%=u.getAddress() %></td>
						<%switch(u.getRoleID()){ 
							case 1 :%>
						<td>Nhân viên</td>
						<%break;
							case 2:%>
						<td>Học viên </td>
						<%break;
							case 3 :%>
						<td>Huấn luyện viên</td>
						<%break;
							case 4:%>
						<td>Nhân viên </td>
						<%break;
							default:%>
							<td></td>
							
						<%break;} %>
						<td>
							<a href="<%=request.getContextPath() %>/Backend/ManageUser/editUser.jsp?userID=<%=u.getUserID()%>"><button type="button" class="btn btn-primary">Sửa</button></a>
							<button onclick="delUser(<%=u.getUserID() %>)" type="button" class="btn btn-danger" data-toggle="modal" data-target="#delete">Xóa</button>
						</td>
					</tr>
					<%} 
					}%>
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
									         <h4>Xác nhận xóa User ?</h4>
									        </div>
									      <!-- Modal footer -->
									        <div class="modal-footer" style="justify-content: center">
									         	<button type="button" id="button-cancel" class="btn btn-secondary" data-dismiss="modal">Hủy</button> 
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