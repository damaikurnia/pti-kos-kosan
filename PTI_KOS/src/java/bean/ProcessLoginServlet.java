/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author agustinus
 */
public class ProcessLoginServlet extends HttpServlet {
//
//    /** 
//     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        PrintWriter out = response.getWriter();
//
//        String userName = request.getParameter("username");
//        String password = request.getParameter("password");
//
//        UserModel Model = new UserModel();
//        Petugas user = Model.getUser(userName, password);
//        Dosen ds = Model.getDosen(userName, password);
//        if (user.getUsername() != null) {
//
//            out.println("Login Berhasil, Anda Login sebagai " + user.getUsername());
//            HttpSession session = request.getSession(true);
//            session.setAttribute("username", user.getUsername());
//            session.setAttribute("user", user);
//            response.sendRedirect("homePetugas.jsp");
//            //            RequestDispatcher rdp = request.getRequestDispatcher("home");
////            rdp.forward(request, response);
//        } else if (ds.getUsername() != null) {
//            out.println("Login Berhasil, Anda Login sebagai " + ds.getUsername());
//            HttpSession session = request.getSession(true);
//            session.setAttribute("username", ds.getUsername());
//            session.setAttribute("user", ds);
//            response.sendRedirect("homeDosen.jsp");
//            //            RequestDispatcher rdp = request.getRequestDispatcher("home");
////            rdp.forward(request, response);
//        } else {
//            response.sendRedirect("homeLogin.jsp?error=yes");
//
//        }
//    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
