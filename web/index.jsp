<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登录页面</title>
    </head>

    <body>
        <%
                session.setAttribute("user", "");  
         %>
        <br>
    <h1 align="center">登录界面</h1>
    <form action="Servlet2" method="post" border="1" align="center" cellspacing="0" cellpadding="2">
        账号:<input type="userName" name="userName" />
        <br>
        密码:<input type="password" name="password"/>       
        <br>      
        <br>
         <br>
        <input type="submit" value="登录"/>
        <a href="zhuce.jsp">注册</a>
        
        
        <div  height="100" width="80" align="right">
            <h3>测试没有登录，是否可以访问页面</h3>
           
                <a href="ceshi.jsp">Java问卷调查</a>
                <br/>
                <a href="javatest.jsp">Java代码测试</a>
                <br/>
                <a href="student.jsp" >当前注册信息</a>
                <br/>
                <a href="stop.jsp" >当前商品信息</a>
                <br/>
                
           
            
        </div>
        
    </form>
    </body>
</html>
