<%@page import="model.Product"%>
<%@page import="dao.Product_DAO"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Buy Product</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Exo+2'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<!--start slider -->
<link rel="stylesheet" href="css/fwslider.css" media="all">
<script src="js/jquery-ui.min.js"></script>
<script src="js/css3-mediaqueries.js"></script>
<script src="js/fwslider.js"></script>
<!--end slider -->
<script src="js/jquery.easydropdown.js"></script>
</head>
<body>
     <%@include file="/menu/menu.jsp" %>

	<!-- start slider -->
	<div id="fwslider">
		<div class="slider_container">
			<div class="slide">
				<!-- Slide image -->
				<img src="<%=request.getContextPath()%>/img/bg.jpg" alt="" />
				<!-- /Slide image -->
				<!-- Texts container -->
				<div class="slide_content">
					<div class="slide_content_wrap">
						<!-- Text title -->
						<h4 class="title">Gym and Fitness</h4>
						<!-- /Text title -->

						<!-- Text description -->
						<p class="description"></p>
						<!-- /Text description -->
					</div>
				</div>
				<!-- /Texts container -->
			</div>
			<!-- /Duplicate to create more slides -->
			<div class="slide">
				<img src="images/b2.jpg" alt="" />
				<div class="slide_content">
					<div class="slide_content_wrap">
						<h4 class="title">Gym and Fitness</h4>
						<p class="description">Heathy for you</p>
					</div>
				</div>
			</div>
			<!--/slide -->
		</div>
		<div class="timers"></div>
		<div class="slidePrev">
			<span></span>
		</div>
		<div class="slideNext">
			<span></span>
		</div>
	</div>
	<!--/slider -->
	<h2 class="head">Sản phẩm nổi bật</h2>
	<%
		ArrayList<Product> listProduct = new Product_DAO().getList();
	%>


	<div class="main">
		<%
			for (int i = 0; i < listProduct.size(); i++) {
		%>


		<div class="section group">
			<div class="cont span_2_of_3">

				<div class="top-box">


					<div class="col_1_of_3 span_1_of_3">

						<div class="inner_content clearfix">

							<a href="Buy_Product?maSp=<%=listProduct.get(i).getId()%>"></a>
							<div class="product_image">
								<img
									src="<%=request.getContextPath()%>/<%=listProduct.get(i).getUrl()%>">
							</div>
							<div class="sale-box">
								<span class="on_sale title_shop">New</span>
							</div>
							<div class="price">
								<div class="cart-left">
									<p class="title"><%=listProduct.get(i).getName()%></p>
									<div class="price1">
										<span class="actual"><%=listProduct.get(i).getPrice()%></span>
									</div>
								</div>
								<div class="cart-right"></div>
								<div class="clear"></div>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>
	</div>

	<%
		}
	%>
</body>
</html>