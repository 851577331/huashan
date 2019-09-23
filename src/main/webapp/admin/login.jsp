<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>用户登录</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
    <title>用户登录</title>

	
	<!-- Styles -->
    <link href="${APP_PATH}/static/assets/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="${APP_PATH}/static/assets/css/lib/themify-icons.css" rel="stylesheet">
    <link href="${APP_PATH}/static/assets/css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="${APP_PATH}/static/assets/css/lib/simdahs.css" rel="stylesheet">
    <link href="${APP_PATH}/static/assets/css/style.css" rel="stylesheet">
</head>

</head>
<body class="bg-primary">

	<div class="unix-login">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-lg-offset-3">
					<div class="login-content">
						<div class="login-logo">
							<a href="index.html"><span>Welcome</span></a>
						</div>
						<div class="login-form">
							<h4>品牌网</h4>
							<form action="login" method="post">
								<div class="form-group">
									<label>User</label>
									<input type="text"  name="uname" class="form-control" placeholder="User">
								</div>
								<div class="form-group">
									<label>Password</label>
									<input type="password" name="password" class="form-control" placeholder="Password">
								</div>
							
								<button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">登录</button>
							
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</html>