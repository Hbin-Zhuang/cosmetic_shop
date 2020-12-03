package myservlet.control;
import mybean.data.Login;
import java.sql.*;
import java.util.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HandleBuyGoods extends HttpServlet {
	public void init(ServletConfig config)throws ServletException{
		super.init(config);
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(Exception e){}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
	   request.setCharacterEncoding("UTF-8");
	   String buyGoodsMess=request.getParameter("buy");
	   if(buyGoodsMess==null||buyGoodsMess.length()==0){
		   fail(request,response,"购物车没有物品，无法生成订单");
		   return;
	   }
	   String price=request.getParameter("price");
	   if(price==null||price.length()==0){
		   fail(request,response,"没有计算价格和，无法生成订单");
		   return;
	   }
	   float sum=Float.parseFloat(price);
	   Login loginBean=null;
	   HttpSession session=request.getSession(true);
	   try{
		   loginBean=(Login)session.getAttribute("loginBean");
		   boolean b=loginBean.getLogname()==null||loginBean.getLogname().length()==0;
		   if(b)
			   response.sendRedirect("login.jsp");  //重定向到登录页面0
	   }
	   catch(Exception exp){
		   response.sendRedirect("login.jsp");  //重定向到登录页面
	   }
	   String uri="jdbc:mysql://127.0.0.1:3306/shop?"+
	              "user=root&password=asdf1149174155&characterEncoding=UTF-8";
	   Connection con;
	   PreparedStatement sql;
	   try{
		   con=DriverManager.getConnection(uri);
		   String insertCondition="insert into orderform values(?,?,?,?)";
		   sql=con.prepareStatement(insertCondition);
		   sql.setInt(1,0);
		   sql.setString(2,loginBean.getLogname());
		   sql.setString(3,buyGoodsMess);
		   sql.setFloat(4,sum);
		   sql.executeUpdate();
		   LinkedList car=loginBean.getCar();
		   car.clear();         //清空购物车
		   success(request,response,"生成订单成功");
	   }
	   catch(SQLException exp){
		   fail(request,response,"生成订单失败"+exp);
	   }
    }

	public void doGet(HttpServletRequest request, HttpServletResponse response) 
	    throws ServletException, IOException {
		doPost(request,response);
	}
	
	public void success(HttpServletRequest request,
			HttpServletResponse response, String backNews) {
		response.setContentType("text/html;charset=UTF-8");
		try{
			PrintWriter out=response.getWriter();
			out.println("<html><body background='images/back.jpg'>");
			out.println("<h2>"+backNews+"</h2>");
			out.println("返回主页");
			out.println("<a href=index.jsp>主页</a>");
			out.println("<br>查看订单");
			out.println("<a href=lookOrderForm.jsp>查看订单</a>");
			out.println("</body></html>");
		}
		catch(IOException exp){}
		
	}
	
	public void fail(HttpServletRequest request, HttpServletResponse response,
			String backNews) {
		response.setContentType("text/html;charset=UTF-8");
		try{
			PrintWriter out=response.getWriter();
			out.println("<html><body background='images/back.jpg'>");
			out.println("<h2>"+backNews+"</h2>");
			out.println("<a href=index.jsp>主页</a>");
			out.println("</body></html>");
		}
		catch(IOException exp){}
	}
}
