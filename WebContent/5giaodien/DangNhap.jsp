<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/main"
	user="root"
	password="1234"
/>
<c:if test="${not empty param.Login}">
	<sql:query var="rs" sql="select * from TaiKhoan where userid='${param.username}' and password='${param.password}' "/>
	<c:if test="${rs.rowCount > 0}">
		<c:set var="user" value="${param.username}" scope="session"/>
		<c:redirect url="HomePage.jsp"/>
	</c:if>
</c:if>
<c:if test="${not empty param.Signin}" >
<c:redirect url='DangKy.jsp'/>
</c:if>

<html> 
    <head>
     <a href="HomePage.jsp" class="navbar-brand"><img src="Picture/logo.png" width="80" height="30"></a>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Sign in</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <form class="form-signin" role="form" action="DangNhap.jsp" method="post">
                <h2 class="form-signin-heading">Đăng nhập</h2>
                <input name="username" class="form-control" placeholder="Email address" required="" autofocus="" type="text">
                <input name="password" class="form-control" placeholder="Password" required="" type="password">
                <label class="checkbox">
                    <input value="remember-me" type="checkbox"> Nhớ Mật khẩu
                </label>
                <input type="submit" name="Login" value ="Đăng Nhập" class="btn btn-ln btn-primary btn-block" style="background-color:rgb(5, 208, 44)" />
            </form>
            <form action="DangNhap.jsp" method="post">            
            <input type="submit" name="Signin" value ="Đăng Ký" class="btn btn-ln btn-primary btn-block" style="background-color:rgb(255, 0, 44)" />
            </form>
        </div>
    </body>
</html>