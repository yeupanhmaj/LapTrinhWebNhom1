<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<c:if test="${empty sessionScope.user }">
	<c:set var="name" value="Đăng Nhập" scope="session"/>
	<c:set var="logout" value="Đăng Ký" scope="session"/>	
	<c:set var="link1" value="DangNhap.jsp" scope="session"/>
	<c:set var="link2" value="DangKy.jsp" scope="session"/>
</c:if>
<c:if test="${not empty sessionScope.user }">
	<c:set var="logout" value="Logout" scope="session"/>
	<c:set var="name" value="${user}" scope="session"/>
	<c:set var="link1" value="UserIF.jsp" scope="session"/>
	<c:set var="link2" value="Logout.jsp" scope="session"/>
</c:if>

<head>
    <title>Trung Tâm Khảo Sát Hasagi</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="css/bootraps1.min.css">
  <link rel="stylesheet" href="Bootstrap3.3.7/css/bootstrap.min.css">
  <script src="Bootstrap3.3.7/js/bootstrap.min.js"></script>
  <script src="jquery-3.2.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
    <style>
  body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
      color: #f5f6f7;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  .bg-1 { 
      background-color: rgba(6, 155, 6, 0.88); /* Green */
      color: #ffffff;
  }
  .bg-2 { 
      background-color: #474e5d; /* Dark Blue */
      color: #ffffff;
  }
  .bg-3 { 
      background-color: #e3e3e3; /* White */
      color: #555555;
  }
  .bg-4 { 
      background-color: #2f2f2f; /* Black Gray */
      color: #fff;
  }
  .container-fluid {
      padding-top: 70px;
      padding-bottom: 70px;
  }
  
  .navbar-nav  li a:hover {
      color: #1abc9c !important;
}
  </style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="navbar-header">
    
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <!-- khi thu nhỏ tới kích thước nào đó thì sẽ chuyển thành dạng button-->
        <span class="icon-bar"></span>
        <span class="icon-bar"></span><!-- Tạo hình button có 3 dấu gạch-->
        <span class="icon-bar"></span>                        
      </button>
      <a href="HomePage.jsp" class="navbar-brand"><img src="Picture/logo.png" width="80" height="30"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
            <li><a>Tạo khảo sát</a></li>
            <li><a>Khảo sát</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right" >
            <li><a href="${link1}">${name}</a></li>
            <li><a href="${link2}">${logout}</a></li>
        </ul>
    </div>
</nav>
  <!-- First Container -->
<div class="container-fluid bg-1 text-center">
  <h3 class="margin">Tự tạo khảo sát</h3>
  <img src="Picture/bird.jpg" class="img-responsive img-circle margin" style="display:inline" alt="Bird" width="350" height="350">
  <h3>Kết nối mọi người</h3>
</div>

<!-- Second Container -->
<div class="container-fluid bg-2 text-center">
  <h3 class="margin">Chúng Tôi Là Ai?</h3>
  <p>Cung cấp cho các bạn các mẫu khảo sát đẹp, hoặc tự tay bạn tạo nên chính nó và đưa tới mọi người </p>
  <a href="#" class="btn btn-default btn-lg">
    <span></span> Tạo Khảo Sát
  </a>
</div>

<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">    
  <h3 class="margin">Đến Với Chúng tôi</h3><br>
  <div class="row"><!--Row chia màn hình: trong bootstrap thì chia thành 12 phần-->
    <div class="col-md-4"><!--col-md-4 là chiếm 4 phần; md tạm hiểu là kích thước tiêu chuẩn-->
      <p>Thiết kế khảo sát của bạn với công cụ đơn giản của chúng tôi để làm cho bảng câu hỏi sử dụng các loại câu hỏi khác nhau</p>
      <img src="Picture/btn-create.png" class="img-responsive margin" style="width:50%" alt="Image">
    </div>
    <div class="col-md-4"> 
      <p>Đăng khảo sát URL của bạn trên phương tiện truyền thông xã hội, trên trang web của bạn hoặc gửi qua email để thu thập câu trả lời của b</p>
      <img src="Picture/btn-collect.png" class="img-responsive margin" style="width:50%" alt="Image">
    </div>
    <div class="col-md-4"> 
      <p>Bảng điều khiển báo cáo thời gian thực của chúng tôi sẽ hiển thị tất cả các kết quả và thống kê với các biểu đồ đơn giản hoặc thông qua việc xuất dữ liệu
</p>
      <img src="Picture/btn-analyze.png" class="img-responsive margin" style="width:50%" alt="Image">
    </div>
  </div>
</div>

<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
    <h3 class="margin">Liên hệ với chúng tôi</h3><br>
  <div class="row">
    <div class="col-md-4">
      <span><p2>HỖ TRỢ KHÁCH HÀNG</p2></span>
        <p><br></p>
        <p3>HOTLINE:</p3>
        <p>0988300140</p>
        <p3>EMAIL</p3>
        <P>support.http@gmail.com</P>
      
    </div>
    <div class="col-md-4"> 
      <p2>NGÔN NGỮ</p2>
        <p><br></p>
        <p>Tiếng Việt</p>
      	<p>English</p>
    </div>
    <div class="col-md-4"> 
      <p2>LIÊN KẾT</p2>
        <p><br></p>
        <a href="https://www.facebook.com/nguyentran.phat.54"><p>Facebook</p></a>
        <a href="https://www.youtube.com/channel/UCJmWrzE9TgYvEYmTtdpEXKA?view_as=subscriber"><p>Youtube</p></a>
      
    </div>
  </div>
</footer>
</body>
</html>

