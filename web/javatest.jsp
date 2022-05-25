
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>计算器</title>
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
       <form action="" method="post">
       		第一个数：<input type="text" value="" name="first" size="25px"/>
       		<br /><br />
       		第二个数：<input type="text" value="" name="second" size="25px"/>
       		<br /><br />
   
       		<input type="submit" value="+" name="operator" size="3"/>         
       		<input type="submit" value="-" name="operator" size="3"/>        
       		<input type="submit" value="*" name="operator" size="3"/>       
       		<input type="submit" value="/" name="operator" size="3"/>      
				
				<input type="reset" value="清除"/>
       </form>
        <br />
        <br />
       		<%                      
					String first = request.getParameter("first");
					String second = request.getParameter("second");
					String operator = request.getParameter("operator");
				 	String result = "" ;    
                                        if("+".equals(operator)) {
       						result = String.valueOf((Integer.valueOf(first) + Integer.valueOf(second) ));
       					}
       					if("-".equals(operator)) {
       						result = String.valueOf((Integer.valueOf(first) - Integer.valueOf(second) ));
       					}
       					if("*".equals(operator)) {
       						result = String.valueOf((Integer.valueOf(first) * Integer.valueOf(second) ));
       					}
       					if("/".equals(operator)) {
       						
       						if(second.equals("0")) {
       							result = "除数不能为0";
       						}else {
       							result = String.valueOf((double)(Integer.valueOf(first) / (double)Integer.valueOf(second) ));
       						}
       					}
                                        out.write(result);
       		%>
                    
       				  <br />
</body>
</html>
