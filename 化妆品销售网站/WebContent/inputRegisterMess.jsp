<%@ page contentType="text/html; charset=UTF-8" %>  
<jsp:useBean id="userBean" class="mybean.data.Register" scope="request"/>
<HTML><HEAD><%@ include file="head.txt" %>
<title>注册页面</title>
<!-- 初始化css -->
<link rel="stylesheet" href="css/base.css">
<!-- register.css文件 -->
<link rel="stylesheet" href="css/register.css">
 <!-- 先引入jquery.min.js文件 -->
<script src="bootstrap/js/jquery.min.js"></script>
<!-- 导入inputRegisterMess.js文件 -->
<script src="js/inputRegisterMess.js"></script>
<style>
.text {
 color: 69BEEB;
}
.navbar-default {
	display: none;
}
a:focus, a:hover {
	text-decoration: none;
}
.registerarea {
  width: 1168px;
}
 
.registerarea h3 {
  margin-top: 0;
}
input {
  outline: none;
}
#sp span {
  color: red;
 }
.text2,
.text3 {
   color: #69BEEB;
}
</style>
</HEAD>
<BODY background="images/register.jpg">
<div class="w">
<!-- registerarea -->
  <div class="registerarea">
    <h3>
	  注册新用户
	 <em>
	       我有账号，去<a href="login.jsp">登录</a>
	 </em>
	</h3>
  <div class="reg_form">
				
    <form action="registerServlet" method="post" name=form autocomplete="off">
	  <ul>
	    <li>
		  <label for="tel">手机号码:</label>
			<input type="text" name="phone" id="ipt">
			<span class="error text">		
			<i class="mess"></i>
			  请输入手机号码  
			</span>
		</li>
		<li>
		  <label for="">用户名称:</label>
		  <input type="text" name="logname" id="ipt1">
		  <span class="error text1">		
		  <i class="error_icon"></i>
			用户名由字母、数字或下划线构成
		  </span>					
		</li>
		<li>
		  <label for="">登陆密码:</label>
		  <input type="password" name="password" id="ipt2">
		  <span class="success text2">		
		  <i class="mess"></i>
			请输入登录密码(要求6-18位)  
		  </span>
		</li>
		<li class="safe">
	               安全程度 
		  <em class="ruo">弱</em>
		  <em class="zhong">中</em>
		  <em class="qiang">强</em>	
		</li>
		  <li>
			<label for="">确认密码:</label>
			<input type="password" name="again_password" id="ipt3">
			<span class="success text3" >		
			  <i class="mess"></i>
				 请再次输入登录密码(要求6-18位)
			</span>
			</li>
			<li>
		  <label for="">邮寄地址:</label>
		  <input type="text" name="address">					
		</li>
		<li>
		  <label for="">真实姓名:</label>
		  <input type="text" name="realname">					
		</li>
		      <li class="agree">  
				<input type="checkbox" checked="checked">同意协议并注册
				<a href="#">《搬砖仔用户协议》</a>
			  </li>
			  <li>
				<input type="submit" value="完成注册" class="over">
			  </li>
	       </ul>
	   </form>
	   <div align="center">
<p id="sp">注册反馈：
<span><jsp:getProperty name="userBean"  property="backNews" /></p></span>
<table width="260px">
     <tr><td>会员名称:</td>
     <td><jsp:getProperty name="userBean" property="logname"/></td>
     </tr>
     <tr><td>姓名:</td>
     <td><jsp:getProperty name="userBean" property="realname"/></td>
     </tr>
     <tr><td>地址:</td>
     <td><jsp:getProperty name="userBean" property="address"/></td>
     </tr>
     <tr><td>电话:</td>
     <td><jsp:getProperty name="userBean" property="phone"/></td>
     </tr>
</table></div >
  </div>
</div>
<div class="footer">
  <p class="links">
	关于我们  |  联系我们  |  联系客服  |  商家入驻  |  营销中心  |  手机品优购  |  友情链接  |  销售联盟  |  好物购社区  |  好物购公益  |  English Site  |  Contact Us
  </p>
  <p class="copyright">
	地址：东莞市寮步镇东莞理工学院城市学院  邮编：516200 电话：400-861-4000 传真：010-82935502 邮箱: zhuangHongbin9520@163.com <br>
京ICP备08009502号京公网安备110108009502
  </p>
</div>
</div>
</Body></HTML>