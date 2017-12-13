<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<sql:setDataSource 	
					var="test"	
					driver="com.mysql.jdbc.Driver" 
					url="jdbc:mysql://localhost/main" 
					user="root" 
					password="1234"
/>
<c:if test="${param.password != param.REpassword}">
	<c:redirect url="DangKy.jsp"/>
</c:if>
<c:if test="${not empty param.Signin}">
<sql:query dataSource="${test}" var="rs" sql="select * from TaiKhoan where userid='${param.username}' "/>
	<c:if test="${rs.rowCount > 0}">		
		<c:redirect url="DangKy.jsp"/>
	</c:if>
<sql:update dataSource="${test}" var="count">
	insert into thongtintaikhoan value('${param.username}',N'${param.ten}','${param.date}',1);
</sql:update>
<sql:update dataSource="${test}" var="count">
	insert into taikhoan value('${param.username}','${param.password}');
</sql:update>
<c:redirect url="re.jsp"/>
</c:if>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Sign in</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
     <a href="HomePage.jsp" class="navbar-brand"><img src="Picture/logo.png" width="80" height="30"></a>
    <body>
        <div class="container"><!-- dùng container để định dạng đưa ra giữa trang-->
            <form class="form-signin" role="form" action="DangKy.jsp" method="post"><!-- form-signin có trong css/bootstrap.min.css giúp cho giao diện đăng nhập đẹp hơn-->
                <h2 class="form-signin-heading">Đăng ký</h2>
                <h6>Email</h6>
                <input class="form-control" placeholder="Email address" required="" autofocus="" type="text" name="username"/>
                <!--type="email" kiểm tra dữ liệu nhập vào là Email-->
                <h6>Mật khẩu</h6>
                <input class="form-control" placeholder="Password" required="" type="password" name='password'/>
                <h6>Nhập lại mật khẩu</h6>
                <input class="form-control" placeholder="Password" required="" type="password" name='REpassword'/>
                <h6>Họ Tên</h6>
                <input class="form-control" placeholder="UserName" required="" type="text" name="ten"/>
                <h6>Giới tính</h6>
                <label class="checkbox">
                    <input value="Nam" type="checkbox" name='gender'> Nam
                    <input value="Nữ"  type="checkbox" name='gender'> Nữ
                </label>
                <h6>Ngày sinh</h6>
                <input class="form-control" placeholder="Old" required="" type="date" name='date'/>
                <input type="submit" name="Signin" value ="Đăng Ký" class="btn btn-ln btn-primary btn-block" style="background-color:rgb(100, 200, 0)" />
                <!--btn-success là nút có màu xanh lá; cơ bản là định dạng cho cái button đẹp hơn-->
            </form>
        </div>
    </body>
</html>