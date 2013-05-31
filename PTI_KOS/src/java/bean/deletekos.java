/*
* To change this template, choose Tools | Templates
* and open the template in the editor.
*/
package bean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
*
* @author wieranata
*/
public class deletekos extends HttpServlet {

/**
* Processes requests for both HTTP
* <code>GET</code> and
* <code>POST</code> methods.
*
* @param request servlet request
* @param response servlet response
* @throws ServletException if a servlet-specific error occurs
* @throws IOException if an I/O error occurs
*/
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException, SQLException {
response.setContentType("text/html;charset=UTF-8");
PrintWriter out = response.getWriter();
String idkos = request.getParameter("idkos");

        }}
 