<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登陆成功</title>
    </head>
    <body>
        <h1 align="center">登陆成功</h1>
        <br>
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
            
        <br>
        <div align="center">
            <a href="ceshi.jsp">Java问卷调查</a>
            <br/>
            <a href="javatest.jsp">Java代码测试</a>
            <br/>
            <a href="student.jsp" >当前注册信息</a>
            <br/>
            <a href="stop.jsp" >当前商品信息</a>
            <br/>
        </div>
        
                <br>
        >
    </body>
</html>
