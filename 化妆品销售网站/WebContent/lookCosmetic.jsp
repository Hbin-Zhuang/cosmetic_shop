<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<html>
<head><%@ include file="head.txt" %></head>
<title>查询化妆品</title>
<body background=images/look.jpg><font size=2>
<div align="center">
<%  try{
	Class.forName("com.mysql.cj.jdbc.Driver");
   }
   catch(Exception e){}
   String uri="jdbc:mysql://127.0.0.1:3306/shop?"+
              "user=root&password=asdf1149174155&characterEncoding=UTF-8";
   Connection con;
   Statement sql;
   ResultSet rs;
   try{
	   con=DriverManager.getConnection(uri);
	   sql=con.createStatement();
	   //读取classify表，获得分类:
	   rs=sql.executeQuery("select * from classify");
	   out.print("<form action='queryServlet' method='post'>");
	   out.print("<select name='fenleiNumber'>");
	   while(rs.next()){
		   int id=rs.getInt(1);
		   String name=rs.getString(2);
		   out.print("<option value="+id+">"+name+"</option>");
	   }
	   out.print("</select>");
	   out.print("<input type='submit' value='提交'>");
	   out.print("</form>");
	   con.close();
   }
   catch(SQLException e){
	   out.print(e);
   }
%>
</div></font>
</body>
</html>