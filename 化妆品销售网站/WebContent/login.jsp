<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<html>
<head>
<%@ include file="head.txt" %>
<title>登录页面</title>
<!-- 引入公共样式文件common.css文件 -->
<link rel="stylesheet" href="css/common.css">
<!-- 引入base.css文件 -->
<link rel="stylesheet" href="css/base.css">
<!-- 引入login.css文件 -->
<link rel="stylesheet" href="css/login.css">
<style>
.navbar-default {
	display: none;
}
a:focus, a:hover {
   text-decoration: none;
}
.login-main {
       height: 530px;
       margin-top: 20px;
}
.loginbtn {
  padding-left: 0!important;
  line-height: 0;
}
.glyphicon-phone:before {
    line-height: 32px;
}
.glyphicon-list-alt:before {
    line-height: 32px;
}
.login-main {
  position: relative;
}
.img a img {
  position: absolute;
  top: 0;
  left: 0;
  width: 630px;
  height: 100%;
}
.feedback span {
  color: red;
}

</style>
</head>
<body>
	<div class="login-main">
		<div class="w">
			<div class="loginfrom">
				<div class="a-from">
					<a href="#" class="from1 fl">扫描登陆</a>
					<span class="spa">|</span>
					<a href="#" class="from2 fr">账户登陆</a>
				</div>
				<div class="anno">公共场所不建议自动登录，以免账号丢失</div>
				<div class="logininput">
				<form action="loginServlet" Method="post" autocomplete="off">
				    <div class="form-item">
					<input type="text" id="username" name="logname" placeholder="邮箱/用户名/手机号">
					<i class="useri"> <span class="glyphicon glyphicon-phone"></span></i>
					</div>
					<div class="form-item">	
					<input type="password" id="password" name="password" placeholder="请输入密码">
					<i class="passwordi"> <span class="glyphicon glyphicon-list-alt"></i>
					</div>
				</div>
				<div class="check">
					<input type="checkbox" checked="checked"><span>自动登录</span>
					<a href="#">忘记密码?</a>
				</div>
				<div class="form-item">
				<input type=submit id="button" class="loginbtn" value="登录">
				</div>
				</form>
				<div class="link">
					<a href="inputRegisterMess.jsp"><span>立即注册</span></a>
				</div>
				<div align="center" class="feedback">
                                              登录反馈信息: <span><jsp:getProperty name="loginBean" property="backNews"/></span>
                  <br>登录名称: <span><jsp:getProperty name="loginBean" property="logname"/></span>
                </div>			
			</div>
		</div>
		<div class="img">
		  <a href="#"><img src="images/img.png" alt=""></a>
		</div>
	</div>

	<div class="footer">
  <p class="links">
	关于我们  |  联系我们  |  联系客服  |  商家入驻  |  营销中心  |  手机品优购  |  友情链接  |  销售联盟  |  品优购社区  |  品优购公益  |  English Site  |  Contact Us
  </p>
  <p class="copyright">
	地址：东莞市寮步镇东莞理工学院城市学院 邮编：516200 电话：400-861-4000 传真：010-82935502 邮箱: zhuangHongbin9520@163.com <br>
京ICP备08009502号京公网安备110108009502
  </p>
</div>
</body>
</html>	