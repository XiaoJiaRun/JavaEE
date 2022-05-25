
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>测试题</title>
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
     <form action="CeshiServlet" method="post" >
        <br>
                面对对象语言：
		Java<input type="radio" name="a" value="Java">
                C<input type="radio" name="a" value="C">
                <br>
              
               循环语句（多选）:
                 for<input type="checkbox" name="b"  value="for"/>
                 while<input type="checkbox" name="b"  value="while"/>
                 if<input type="checkbox" name="b"  value="if"/>
                <br>
                
                下列正确的是：
		Java可以多继承<input type="radio" name="c" value="a">
                Java可以实现多接口<input type="radio" name="c" value="b">
                Java构造函数必须实现<input type="radio" name="c" value="c">
                Java子类初始化必须super父类<input type="radio" name="c" value="d">
                <br>
                 
                介绍重载和重写：
                 <textarea name ="d"></textarea>
                  <br>
                
                介绍面对对象思想：
                 <textarea name ="e"></textarea>
                  <br>
     
        <input type="submit" value="提交"/>
    </form>
    </body>
</html>
