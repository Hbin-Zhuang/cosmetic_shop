<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session" />
<%@ page import="java.sql.*" %>
<html>
<head><%@ include file="head.txt" %></head>
<title>查看订单</title>
<body background=images/orderForm.jpg>
<div align="center">
<% if(loginBean==null){
	response.sendRedirect("login.jsp");  //重定向到登录页面
   }
   else{
	   boolean b=loginBean.getLogname()==null||loginBean.getLogname().length()==0;
	   if(b)
		   response.sendRedirect("login.jsp");  //重定向到登录页面
   }
   Connection con;
   Statement sql;
   ResultSet rs;
   try{
	   Class.forName("com.mysql.cj.jdbc.Driver");
   }
   catch(Exception e){}
   try{
	   String uri="jdbc:mysql://127.0.0.1:3306/shop";
	   String user="root";
	   String password="asdf1149174155";
	   con=DriverManager.getConnection(uri,user,password);
	   sql=con.createStatement();
	   String cdn="select id,mess,sum from orderform where logname='"+loginBean.getLogname()+"'";
	   rs=sql.executeQuery(cdn);
	   out.print("<table border=2>");
	   out.print("<tr>");
	   out.print("<th width=100>"+"订单号");
	   out.print("<th width=100>"+"信息");
	   out.print("<th width=100>"+"价格");
	   out.print("</tr>");
	   while(rs.next()){
		   out.print("<tr>");
		   out.print("<td>"+rs.getString(1)+"</td>");
		   out.print("<td>"+rs.getString(2)+"</td>");
		   out.print("<td>"+rs.getString(3)+"</td>");
		   out.print("</tr>");
	   }
	   out.print("</table>");
	   con.close();
   }
   catch(SQLException e){
	   out.print(e);
   }
%>
</div>
</body>
</html>