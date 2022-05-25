<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="JavaStop.Stop" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品</title>
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
        
        <form >
            <table align="center">
                <tr>
                        <td>品牌:</td>
                        <td><input type="text" name="pp"/></td>
                </tr>
                <tr>
                        <td>商品名:</td>
                        <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                        <td>定价:</td>
                        <td><input type="text" name="score"/></td>
                </tr>
                <tr>
                        <td ><input type="submit" value="提交"/></td>
                </tr>
            </table>
    </form>
        
    <jsp:useBean id="stop" scope="page" class="JavaStop.Stop"></jsp:useBean>
    
    
    <%
        request.setCharacterEncoding("utf-8");
    %>
    <jsp:setProperty property="*" name="stop"/>
    
    <div align="center" size ="1000">
        <br/>
        品牌<jsp:getProperty property="pp" name="stop"/>
        <br/>
        商品名<jsp:getProperty property="name" name="stop"/>
        <br/>
        价格<jsp:getProperty property="score" name="stop"/>
        <br/>
    </div>
    

      
    </body>
</html>


