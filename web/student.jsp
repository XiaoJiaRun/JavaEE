<%@ page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            String str = (String) session.getAttribute("user");
            if(str.equals("")) {
                request.getRequestDispatcher("/NO.jsp").forward(request,response);
            }
        %>
        <div>
            当前用户为：<%=str%>
           
            <br/>
            <a href="index.jsp">注销</a>
            <br/>
        </div>
        
        <table border="1" align="center" cellspacing="0" cellpadding="2">
            <caption><h3>登录信息</h3></caption>
            <thead><tr><th>账户</th><th>密码</th></tr></thead>
            <%   
            String driver="com.mysql.jdbc.Driver";
		String user="root";
		String password="123456";
		String url="jdbc:mysql://localhost:13306/student";
                ResultSet rs = null;
		try{
			Class.forName(driver);
			Connection conn=DriverManager.getConnection(url,user,password);
			System.out.println("连接成功!");
			Statement stmt=conn.createStatement();
			rs=stmt.executeQuery("SELECT name,password FROM user;");
			System.out.println("查询成功!");
                        //out.write("name        password");	
                         while(rs.next()) {
                            // out.write("<tbody align ="center"><tr><th></th><th>rs.getString("name")</th><tr><th>rs.getString("name")</th></tr></tbody>");
                             out.write("<tbody align =");
                             out.write("center");
                             out.write("><tr><td>");
                             out.write(rs.getString("name"));
                             out.write("</td><td>");
                             out.write(rs.getString("password"));
                             out.write("</td></tr></tbody>");
                        }                  
                                                
                                                
			rs.close();
			stmt.close();
			conn.close();
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
                
        %>
        
        </table>
    
        
    </body>
</html>
