<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<sql:setDataSource
	var="test"	
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/main"
	user="root"
	password="1234"
/>
<c:if test="${empty sessionScope.user }">
	<c:redirect url='DangNhap.jsp'/>
</c:if>
<c:if test="${not empty param.Login}">
	
			<c:if test="${col.value=previous}">
					<c:if test="${param.newpassword != param.renewpassword}">	
					<c:redirect url="PasswordChange.jsp"/>	
				</c:if>	
				<c:if test="${param.newpassword = param.renewpassword}">	
					<sql:update dataSource="${test}" var="count">
					update taikhoan set password='${newpassword}' where userid='${user}'; 
				</sql:update>
				</c:if>			
			</c:if>						
		
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
            <form class="form-signin" role="form" action="PasswordChange.jsp" method="post">
                <h2 class="form-signin-heading">Đăng nhập</h2>
                <input name="previous" class="form-control" placeholder="Previous Password" required="" type="password">
                <input name="newpassword" class="form-control" placeholder="New Password" required="" autofocus="" type="password">
                <input name="renewpassword" class="form-control" placeholder="Re Enter New Password" required="" type="password">
                <label class="checkbox">            
                </label>
                <input type="submit" name="Login" value ="Xác Nhận" class="btn btn-ln btn-primary btn-block" style="background-color:rgb(5, 208, 44)" />
            </form>            
        </div>
    </body>
</html>