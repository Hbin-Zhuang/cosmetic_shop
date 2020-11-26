<%@ page contentType="text/html; charset=UTF-8" %>  
<jsp:useBean id="userBean" class="mybean.data.Register" scope="request"/>
<HTML><HEAD><%@ include file="head.txt" %>
<title>注册页面</title>
<style type="text/css">
 	table{float:center;text-align:center;background:f1eaea;}
  	#sp{font-size:15px;color:#e3281c;}
	#bt{text-align:center;width:25%;background:skyblue;}
</style></HEAD>
<BODY background="images/register.jpg">
<Font size=2>
<div align="center">
<FORM action="registerServlet" method="post" name=form>
<table>
   <tr><td><span id="sp">注意：</span>用户名由字母、数字、下划线构成，*注释的项必须填写</td></tr>
   <tr><td>用户名称*:<Input type=text name="logname" ></td></tr>                
   <tr><td>用户密码*:<Input type=password name="password"></td></tr>
   <tr><td>重复密码*:<Input type=password name="again_password"></td></tr>
   <tr><td>联系电话   :<Input type=text name="phone"></td></tr>
   <tr><td>邮寄地址   :<Input type=text name="address"></td></tr>
   <tr><td>真实姓名   :<Input type=text name="realname"></td></tr>
   <tr><td><br><Input id="bt" type=submit name="g" value="提交"></td></tr>
</table></FORM></div >
<div align="center">
<p id="sp">注册反馈：
<jsp:getProperty name="userBean"  property="backNews" /></p>
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
</Body></HTML>