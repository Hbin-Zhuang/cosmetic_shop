package myservlet.control;
import mybean.data.DataByPage;
import javax.sql.rowset.CachedRowSet;
import javax.sql.rowset.RowSetProvider;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class QueryAllRecord extends HttpServlet {
	CachedRowSet rowSet=null;
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
	 	String idNumber=request.getParameter("fenleiNumber");
	 	if(idNumber==null)
	 		idNumber="0";
	 	int id=Integer.parseInt(idNumber);
	 	HttpSession session=request.getSession(true);
	 	Connection con=null;
	 	DataByPage dataBean=null;
	 	try{
	 		dataBean=(DataByPage)session.getAttribute("dataBean");
	 		if(dataBean==null){
	 			dataBean = new DataByPage(); //创建JavaBean对象
	 			session.setAttribute("dataBean",dataBean);
	 		}
	 	}
	 	catch(Exception exp){
	 		dataBean = new DataByPage();
	 		session.setAttribute("dataBean",dataBean);
	 	}
	 	String uri="jdbc:mysql://127.0.0.1:3306/shop";
	 	try{
	 		con=DriverManager.getConnection(uri,"root","asdf1149174155");
	 		Statement sql=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
	 		ResultSet rs=sql.executeQuery("select * from cosmeticForm where id= "+id);
	 		rowSet = RowSetProvider.newFactory().createCachedRowSet();  //创建行集对象
	 		rowSet.populate(rs);
	 		dataBean.setRowSet(rowSet);   //行集数据存储在dataBean中
	 		con.close();  //关闭连接
	 	}
	 	catch(SQLException exp){}
	 	response.sendRedirect("byPageShow.jsp");  //重定向到byPageShow.jsp
	}
    
	 public void doGet(HttpServletRequest request, HttpServletResponse response) 
	       throws ServletException, IOException {
		doPost(request,response);
	}

	
	
}
