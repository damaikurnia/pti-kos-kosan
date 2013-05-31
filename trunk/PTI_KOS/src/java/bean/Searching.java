/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.*;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author hp
 */
public class Searching extends HttpServlet{
 
    @Override
 public void doPost(HttpServletRequest request, HttpServletResponse response)
  throws ServletException,IOException{
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            String  namaKos  = request.getParameter("namaKos");
           
            DbUtility conn = new DbUtility();
            ArrayList al=null;
            ArrayList kosList =new ArrayList();
             try {
            String query = "select * from kos where namaKos=%";
                      com.mysql.jdbc.Statement statement = (com.mysql.jdbc.Statement) conn.getConnection().createStatement();
                      ResultSet result = statement.executeQuery(query);
  

            while(result.next()){
            al  = new ArrayList();
            
            al.add(result.getString(1));
            al.add(result.getString(2));
            al.add(result.getString(3));
            al.add(result.getString(4));
            al.add(result.getString(5));
            System.out.println("al :: "+al);
            kosList.add(al);
            }

            request.setAttribute("kosList",kosList);
            
           System.out.println("kosList " + kosList);

            // out.println("emp_list " + emp_list);

            String nextJSP = "/viewSearch.jsp";
            RequestDispatcher dispatcher = 
             getServletContext().getRequestDispatcher(nextJSP);
            dispatcher.forward(request,response);
           statement.close();
        } catch (SQLException ex) {
            Logger.getLogger(Searching.class.getName()).log(Level.SEVERE, null, ex);
        }
  } catch (Exception e) {
  e.printStackTrace();
  }
  }
}

