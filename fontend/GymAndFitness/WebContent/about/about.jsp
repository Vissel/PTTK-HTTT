
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
   <head>
    <title>About </title>

  </head>
  <body>
    
  
     <%@include file="/menu/menu.jsp" %>
    <section class="home-slider-loop-false  inner-page owl-carousel">
      <div class="slider-item" style="background-image: url('../img/bg.jpg');">
        
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center">
            <div class="col-md-8 text-center col-sm-12 element-animate">
              <h1>About Us</h1>
              
            </div>
          </div>
        </div>

      </div>

    </section>
    <!-- END slider -->

    <section class="section element-animate">
      <div class="clearfix mb-5 pb-5">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 text-center heading-wrap">
              <h2>About Us</h2>
              <span class="back-text">About</span>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <p><img style="width: 600px; height: 370px;" src="<%=request.getContextPath()%>/img/ptap.png" alt="" class="img-fluid"></p>
            <p class="mb-5"><img style="width: 600px; height: 370px;" src="<%=request.getContextPath()%>/img/ptap1.jpg" alt="" class="img-fluid"></p>
          </div>
          
          <div class="col-lg-6 pl-2 pl-lg-5">
            <h2 class="mb-5">History</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius est soluta blanditiis velit doloremque corrupti aliquid ducimus consectetur ea nobis dolorem, id quibusdam praesentium consequuntur modi eligendi, sunt suscipit ullam iure nesciunt tempore. Itaque placeat, libero aliquam odio ex voluptas.</p>
            <p>Vel vitae, assumenda blanditiis nemo in vero reprehenderit asperiores distinctio exercitationem aliquid, quam velit explicabo neque. Sapiente provident sequi omnis itaque eaque voluptatum vel. Accusamus deserunt atque eligendi mollitia voluptates eum libero, ratione id labore. Magnam porro dolorem aspernatur, dolor?</p>
            
            <p class="mb-5">Vel vitae, assumenda blanditiis nemo in vero reprehenderit asperiores distinctio exercitationem aliquid, quam velit explicabo neque. Sapiente provident sequi omnis itaque eaque voluptatum vel. Accusamus deserunt atque eligendi mollitia voluptates eum libero, ratione id labore. Magnam porro dolorem aspernatur, dolor?</p>

          </div>
        </div>
      </div>

    </section>

    <section class="section element-animate">

      <div class="clearfix mb-5 pb-5">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 text-center heading-wrap">
              <h2>Gallery</h2>
              <span class="back-text">The Gallery</span>
            </div>
          </div>
        </div>
      </div>

      <div class="owl-carousel centernonloop">
        <a href="<%=request.getContextPath()%>/img/img_1_square.jpg" class="image-popup">
          <img src="<%=request.getContextPath()%>/img/img_1_square.jpg" alt="" class="img-fluid">
        </a>
        <a href="<%=request.getContextPath()%>/img/img_1_square.jpg" class="image-popup">
          <img src="<%=request.getContextPath()%>/img/img_2_square.jpg" alt="" class="img-fluid">
        </a>
        <a href="<%=request.getContextPath()%>/img/img_1_square.jpg" class="image-popup">
          <img src="<%=request.getContextPath()%>/img/img_3_square.jpg" alt="" class="img-fluid">
        </a>
        <a href="<%=request.getContextPath()%>/img/img_1_square.jpg" class="image-popup">
          <img src="<%=request.getContextPath()%>/img/img_4_square.jpg" alt="" class="img-fluid">
        </a>
      </div>
    </section> <!-- .section -->

    
    

    <section class="section element-animate">

      <div class="clearfix mb-5 pb-5">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 text-center heading-wrap">
              <h2>Leadership</h2>
              <span class="back-text">Our Founders</span>
            </div>
          </div>
        </div>
      </div>
        <div class="container">
          <div class="row">
            <div class="major-caousel js-carousel-1 owl-carousel">
              <div>
                <div class="media d-block media-custom text-center">
                  <a href=""><img src="<%=request.getContextPath()%>/img/lsi1.jpg" alt="Image Placeholder" class="img-fluid"></a>
                  <div class="media-body">
                    <h3 class="mt-0 text-black">Phạm Văn Mách</h3>
                    <p class="lead">Gym, Co-Founder</p>
                  </div>
                </div>
              </div>
              <div>
                <div class="media d-block media-custom text-center">
                  <a href="#"><img src="<%=request.getContextPath()%>/img/lsi2.jpg" alt="Image Placeholder" class="img-fluid"></a>
                  <div class="media-body">
                    <h3 class="mt-0 text-black">Nguyễn Thị Mỹ Linh</h3>
                    <p class="lead">Gym, Co-Founder</p>
                  </div>
                </div>
              </div>
              <div>
                <div class="media d-block media-custom text-center">
                  <a href="adoption-single.html"><img src="<%=request.getContextPath()%>/img/lsi3.jpg" alt="Image Placeholder" class="img-fluid"></a>
                  <div class="media-body">
                    <h3 class="mt-0 text-black">Lý Đức</h3>
                    <p class="lead">Gym Trainer</p>
                  </div>
                </div>
              </div>

               <div>
              <div class="media d-block media-custom text-center">
                <a href="adoption-single.html"><img src="<%=request.getContextPath()%>/img/lsi1.jpg" alt="Image Placeholder" class="img-fluid"></a>
                <div class="media-body">
                  <h3 class="mt-0 text-black">Phạm Văn Mách</h3>
                  <p class="lead">Gym Trainer</p>
                </div>
              </div>
            </div>
            <div>
              <div class="media d-block media-custom text-center">
                <a href="adoption-single.html"><img src="<%=request.getContextPath()%>/img/lsi2.jpg" alt="Image Placeholder" class="img-fluid"></a>
                <div class="media-body">
                  <h3 class="mt-0 text-black">Nguyễn Thị Mỹ Linh</h3>
                  <p class="lead">CEO, Co-Founder</p>
                </div>
              </div>
            </div>
            <div>
              <div class="media d-block media-custom text-center">
                <a href="adoption-single.html"><img src="<%=request.getContextPath()%>/img/lsi3.jpg" alt="Image Placeholder" class="img-fluid"></a>
                <div class="media-body">
                  <h3 class="mt-0 text-black">Lý Đức</h3>
                  <p class="lead">CEO, Co-Founder</p>
                </div>
              </div>
            </div>
            
              
          </div>
          <!-- END slider -->
          </div>
        </div>
      
    </section> <!-- .section -->

    
 <%@include file="/footer/footer.jsp" %>

 
   
  </body>
</html>