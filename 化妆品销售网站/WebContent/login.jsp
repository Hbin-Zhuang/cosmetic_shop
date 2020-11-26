<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<html>
<head>
<title>登录页面</title>
<link rel="stylesheet" type="text/css" href="css/login.css" />
</head>
<body>
	<div class="dw">			
		<div class="wel" align="center">
		欢迎登录！
		</div>
		<FORM action="loginServlet" Method="post" autocomplete="off">			
		<div class="form-item">			
			<input id="username" type=text  value="用户名" name="logname" >		
		</div>		
		<div class="form-item">				
			<input id="password" type=password  value="登录密码" name="password" >	
		</div>	
		<div class="form-item"><input type=submit id="button" value="登录"></div>
		</FORM>
<div align="center" >
                 登录反馈信息:<jsp:getProperty name="loginBean" property="backNews"/>
   <br>登录名称:<jsp:getProperty name="loginBean" property="logname"/>
</div>			
		<div class="reg-bar">		
			<a class="reg" href="index.jsp">返回主页</a>				
		</div>		
	 </div>
</body>
</html>	