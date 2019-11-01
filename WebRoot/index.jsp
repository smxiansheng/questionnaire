<%@ page language="java"  contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	 <meta charset="utf-8">  
	<title>Login</title>
		<meta charset="utf-8">
		<link href="css/login.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
			<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/site.css" rel="stylesheet">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>
<body>
    <input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
	 <div class="main">
		<div class="login-form">
			<h1>用户登录</h1>
					<div class="head">
						<img src="img/user.png" alt=""/>
					</div>
				<%-- 	action="${pageContext.request.contextPath}/login.do"  --%>
				<form  method="post">
						
							<input type="text" name=aXm  id="username" class="text" placeholder="请输入用户名"  />
						
							<input type="password"   name="aKl"  id="password" class="password" placeholder="请输入密码"  />
							
							<div id="loginmsg" style="color:red;size=16;">&nbsp;</div>
						
					<div class="submit">
					<input type="submit" onclick="login();return false;" class="btn btn-success" style="width:92%;" value="登录"/>
					</div>
					
				</form>
			</div>
			
		</div>
			
		 		
<div style="display:none"></div>
<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript"   src="js/login.js"></script>
</body>
</html>
