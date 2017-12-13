<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/main"
	user="root"
	password="1234"
/>
<c:if test="${empty sessionScope.user }">
	<c:redirect url='DangNhap.jsp'/>
</c:if>
<c:if test="${not empty sessionScope.user }">
<sql:query var="re" sql="select ten from thongtintaikhoan where userid='${user}'" />
	<c:forEach items="${re.rows}" var="row" >
	<c:forEach items="${row}" var='col'><c:set var='hoten' value='${col.value}'/></c:forEach>
</c:forEach>
</c:if>
<head>
    <title>Trung Tâm Khảo Sát Hasagi</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="Bootstrap3.3.7/css/bootstrap.min.css">
    <script src="jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body style="background-color:rgba(225, 244, 250, 0.37);">
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
              <!-- khi thu nhỏ thì sẽ chuyển thành dạng button-->
            <span class="icon-bar"></span>
            <span class="icon-bar"></span><!-- Tạo hình button có 3 dấu gạch-->
            <span class="icon-bar"></span>                        
          </button>
          <a href="HomePage.jsp"class="navbar-brand"><img src="Picture/logo.png" width="70" height="20"></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><a>Tạo khảo sát</a></li>
                <li><a>Khảo sát</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right" >
                <li><a ><img src="Picture/logoUser.jpg" width="20" height="20"> ${hoten} </a></li>
                <li><a href="Logout.jsp""><img src="Picture/Power%20-%20Log%20Off.png" width="20" height="20"> Log off</a></li>
            </ul>
        </div>
      </div>
    </nav>
    <div class="container">  
      <h4 class="margin">Thông tin tài khoản</h4><br>
      <div class="row">
        <div class="col-sm-4" style="background-color:rgb(255, 255, 255); border:0.5px solid green">
            <ul style="list-style-type:none"><!-- không hiển thi dấu chấm trước list-->
                <li>
                    <img src="Picture/logoUser.jpg"width="100" height="100"alt="Image">
                </li><br><br>
                <li><h4><a href="PasswordChange.jsp"> đổi mật khẩu</a></h4></li>
                <li>Số điện thoại</li>
            </ul>
        </div>
          <div class="col-sm-1"> 
        </div>
        <div class="col-sm-7"style="background-color:rgb(255, 255, 255); border:0.5px solid green"> 
            <h4>Hoạt động tài khoản</h4><br>
            <table class="table table-condensed">
                <tr>
                    <th>Ngày tháng</th>
                    <th>Quốc gia</th>
                    <th>Hoạt động</th>
                </tr>
                <tr>
                    <td>10/01/2017</td>
                    <td>Việt Nam</td>
                    <td>Cập nhật ảnh</td>
                </tr>
                <tr>
                    <td>30/04/2017</td>
                    <td>Việt Nam</td>
                    <td>Thay đổi mật khẩu</td>
                </tr>
            </table>
        </div>
      </div><br>
        <div class="row">
            <div class="col-sm-4" ></div>
            <div class="col-sm-1"></div>
            <div class="col-sm-7"style="background-color:rgb(255, 255, 255); border:0.5px solid green"> 
                <h4>Lịch sử đăng nhập</h4><br>
                <table class="table table-condensed">
                    <tr>
                        <th>Ngày tháng</th>
                        <th>Quốc Gia</th>
                        <th>Nguồn</th>
                    </tr>
                    <tr>
                        <td>10/01/2017</td>
                        <td>Việt Nam</td>
                        <td>Facebock</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</body>
</html>

