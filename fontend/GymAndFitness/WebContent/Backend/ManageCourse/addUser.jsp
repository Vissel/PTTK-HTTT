<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="UTF-8">
<title>Tạo mới User</title>
</head>
<body>
	<h1>Tạo User</h1>
	<div class="row">
		<div class="col-sm-2">
			<jsp:include page="../menu.jsp"></jsp:include>
		</div>

		<div class="col-sm-10">

			<form action="<%=request.getContextPath() %>/AUDUser" method="post" class="form-inline">
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label for="typeUser" class="mb-2 mr-sm-2">Loại user: <span id="mandatory">*</span></label> <select
								class="form-control" style="width: 300px; margin-bottom: 7px" name="typeUser">
								<option>Học viên</option>
								<option>Huấn luyện viên</option>
								<option>Nhân viên</option>
							</select>
						</div>
						<div class="form-group">
							<label for="id" class="mb-2 mr-sm-2">Code:<span id="mandatory">*</span></label> <input
								type="text" class="form-control mb-2 mr-sm-2" name="codeUser"
								placeholder="ID">
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Họ tên:<span id="mandatory">*</span></label> <input type="text"
								class="form-control mb-2 mr-sm-2" name="nameUser" placeholder="Họ tên">
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Ngày sinh:</label> <input type="date"
								name="dob" width="400" />
						</div>
							<div class="form-check-inline" style="margin: 15px 0 10px 0">
							<label class="mb-2 mr-sm-2">Giới tính: </label>
								  <label class="form-check-label" style="margin-left: 80px">
								    <input type="radio" class="form-check-input" style="width: 50px" name="sex" checked="checked">Nam
								  </label>
								  <label class="form-check-label" style="margin-left: 50px">
								    <input type="radio" class="form-check-input" style="width: 50px" name="sex">Nữ
								  </label>
							</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Số điện thoại:<span id="mandatory">*</span></label> <input
								type="number" class="form-control mb-2 mr-sm-2" name="phone"
								placeholder="Số điện thoại">
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Email:<span id="mandatory">*</span></label> <input
								type="text" class="form-control mb-2 mr-sm-2" name="email"
								placeholder="email">
						</div>
						<div class="form-group">
							<label for="typeUser" class="mb-2 mr-sm-2">Tỉnh / TP:</label> <select
								class="form-control" style="width: 300px; margin-bottom: 7px" name="city">
								<option>TP HCM</option>
								<option>Hà Nội</option>
								<option>Cần Thơ</option>
							</select>
						</div>
						<div class="form-group">
							<label for="typeUser" class="mb-2 mr-sm-2">Huyện / Quận :</label>
							<select class="form-control"
								style="width: 300px; margin-bottom: 7px" name="town">
								<option>Quận 1</option>
								<option>Quận 2</option>
								<option>Quận 3</option>
								<option>Quận Thủ đức</option>
								<option>Quận 9</option>
								<option>Quận 10</option>
							</select>
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Địa chỉ:</label> <input type="text"
								class="form-control mb-2 mr-sm-2" name="address"
								placeholder="Địa chỉ">
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Tài khoản ngân hàng:</label> <input type="text"
								class="form-control mb-2 mr-sm-2" name="bankAccount"
								placeholder="tài khoản">
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Tên ngân hàng:</label> <input type="text"
								class="form-control mb-2 mr-sm-2" name="bankName"
								placeholder="tên bank">
						</div>
					</div>
					
					<div class="col-sm-6">
						<h4 style="text-align: center; ">Thông tin khóa học</h4>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Mã khóa học:</label> <select
								class="form-control" style="width: 300px; margin-bottom: 7px" name="courseCode">
								<option>GYM1AH</option>
								<option>YOGA1BA</option>
								<option>DANCECC1</option>
							</select>
						</div>
						<div class="form-group">
							<label  class="mb-2 mr-sm-2">Tên Khóa học:</label> <input
								type="text" class="form-control mb-2 mr-sm-2" name="courseName"
								placeholder="Tên khóa học">
						</div>
						<div class="form-group" style="margin-top: 10px; margin-bottom: 10px">
							<label class="mb-2 mr-sm-2">Thời gian bắt đầu:</label> <input type="date"
								name="startDate" />
						</div>
						<div class="form-group" style="margin-top: 10px; margin-bottom: 10px">
							<label class="mb-2 mr-sm-2">Thời gian kết thúc:</label> <input type="date"
								name="endDate"  />
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Mã Huấn luyện viên:</label> <select
								class="form-control" style="width: 300px; margin-bottom: 7px" name="trainerCode">
								<option>HLV001</option>
								<option>HLV101</option>
								<option>HVL201</option>
							</select>
						</div>
						<div class="form-group">
							<label  class="mb-2 mr-sm-2">Tên huấn luyện viên:</label> <input
								type="text" class="form-control mb-2 mr-sm-2" name="trainerName"
								placeholder="Tên huấn luyện viên">
						</div>
						<div class="form-group">
							<label  class="mb-2 mr-sm-2">Học phí:</label> <input
								type="number" class="form-control mb-2 mr-sm-2" name="fee"
								placeholder="Học phí"> 
						</div>
						<div class="form-group">
							<p>Ghi chú</p>
							<textarea rows="5" cols="65" name="description"></textarea> 
						</div>
					</div>
				</div>
				<p style="color: red"> * Là những dữ liệu bắt buộc</p>
				<div class="button" >
					<a href=""><button id="button-cancel" type="submit" name="command" value="cancel">Hủy</button></a>
					<a href=""><button id="button-createUser" type="submit" name="command" value="add">Thêm User</button></a> 
					<!--<input type="hidden" name="command" value="add">
					<input type="submit" name="submit" class="btn btn-warning pull-right" value="Thêm User"> -->
				</div>
			</form>

		</div>
	</div>
</body>
<script>
	$('#datepicker').datepicker({
	uiLibrary : 'bootstrap'
								});
</script>
<style type="text/css">
.form-inline{margin-top:10px}
.form-inline .row .col-sm-6 .form-group label {
	position: absolute;
}

.form-inline .row .col-sm-6 .form-group input, select {
	margin-left: 170px;
}

.form-inline .row .col-sm-6 input {
	width: 300px;
}
.form-check-inline {
	position: relative;	 
}
</style>
</html>