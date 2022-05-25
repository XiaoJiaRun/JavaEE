/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "CeshiServlet", urlPatterns = {"/CeshiServlet"})
public class CeshiServlet extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        try {
           String a = request.getParameter("a");
           String[] b = request.getParameterValues("b");
           String c = request.getParameter("c");
           String d = request.getParameter("d");
           String e = request.getParameter("e");
           
           out.write("     你的选择:<br>");
           out.write("面对对象语言:"+a+"<br>");
           
           out.write("循环语句(多选):");
           for(int i = 0; i < b.length; i++){
               out.write(" "+b[i] +" ");
           }
           out.write("<br>");
           out.write("正确的是:");
           if(c.equals("a")) {
               out.write("Java可以实现多接口");
           }else if(c.equals("b")) {
                out.write("Java可以多继承");
           }else if(c.equals("c")) {
                out.write("Java构造函数必须实现");
           }else if(c.equals("d")) {
                out.write("Java子类初始化必须super父类");
           }
              
           
           out.write("<br>");
           out.write("介绍重载和重写："+d+"<br>");
           out.write("面对对象思想:"+e+"<br>");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
