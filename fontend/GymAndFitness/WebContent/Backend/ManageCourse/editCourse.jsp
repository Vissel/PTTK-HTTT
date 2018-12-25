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
<title>Chỉnh sửa khóa học</title>
</head>
<body>
	<h1>Chỉnh sửa khóa học</h1>
	<div class="row">
		<div class="col-sm-2">
			<jsp:include page="../menu.jsp"></jsp:include>
		</div>

		<div class="col-sm-10">

			<form action="<%=request.getContextPath() %>/AUDCourse" method="post" class="form-inline">
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Loại khóa học: <span id="mandatory">*</span></label> <select
								class="form-control" style="width: 300px; margin-bottom: 7px" name="typeCourse">
								<option value="1">GYM</option>
								<option value="2">YOGA</option>
								<option value="3">DANCE</option>
								<option value="4">Huấn luyện cá nhân</option>
							</select>
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Code:<span id="mandatory">*</span></label> <input
								type="text" class="form-control mb-2 mr-sm-2" name="codeCourse">
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Tên khóa học:<span id="mandatory">*</span></label> <input type="text"
								class="form-control mb-2 mr-sm-2" name="nameCourse" >
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Ngày bắt đầu:<span id="mandatory">*</span></label> <input type="date"
								name="startDate" class="form-control mb-2 mr-sm-2" width="400" />
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Ngày kết thúc:<span id="mandatory">*</span></label> <input type="date"
								name="endDate" class="form-control mb-2 mr-sm-2" width="400" />
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Đối tượng học:</label> <input
								type="text" class="form-control mb-2 mr-sm-2" name="actor">
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Số lượng học viên:</label> <input
								type="number" class="form-control mb-2 mr-sm-2" name="quantity">
						</div>
						<div class="form-group">
							<p class="mb-2 mr-sm-2">Mô tả </p>
							<textarea class="form-control" rows="5" cols="66" name="description"></textarea> 
						</div>
					</div>
					
					<div class="col-sm-6">
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Phòng học:</label> <select
								class="form-control" style="width: 300px; margin-bottom: 7px" name="room">
								<option value="P101">P101</option>
								<option value="P201">P201</option>
								<option value="P201">P202</option>
							</select>
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Địa chỉ:</label> <input type="text"
								class="form-control mb-2 mr-sm-2" name="address">
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Tỉnh / TP:</label> <select
								class="form-control" style="width: 300px; margin-bottom: 7px" name="city">
								<option>TP HCM</option>
								<option>Hà Nội</option>
								<option>Cần Thơ</option>
							</select>
						</div>
						<div class="form-group">
							<label class="mb-2 mr-sm-2">Huyện / Quận :</label>
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
							<label class="mb-2 mr-sm-2">Mã Huấn luyện viên:</label> <select
								class="form-control" style="width: 300px; margin-bottom: 7px" name="trainerCode">
								<option>HL001</option>
								<option>HL002</option>
							</select>
						</div>
						<div class="form-group">
							<label  class="mb-2 mr-sm-2">Tên huấn luyện viên:</label> <input
								type="text" class="form-control mb-2 mr-sm-2" name="trainerName">
						</div>
						<div class="form-group">
							<label  class="mb-2 mr-sm-2">Học phí:</label> <input
								type="number" class="form-control mb-2 mr-sm-2" name="fee"
								placeholder="Học phí"> 
						</div>
						<div class="form-group">
							<p  class="mb-2 mr-sm-2">Ghi chú</p>
							<textarea class="form-control" rows="5" cols="65" name="description"></textarea> 
						</div>
					</div>
				</div>
				<p style="color: red"> * Là những dữ liệu bắt buộc</p>
				<div class="button" >
					<button id="button-cancel" type="submit" name="command" value="cancel">Hủy</button>
					<button id="button-createUser" type="submit" name="command" value="add">Thêm khóa học</button>
				</div>
			</form>

		</div>
	</div>
</body>
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