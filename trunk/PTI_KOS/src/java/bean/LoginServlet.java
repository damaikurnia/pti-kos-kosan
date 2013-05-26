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
 * @author wieranata
 */
public class LoginServlet extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String idpemilik = request.getParameter("idpemilik");
        String password = request.getParameter("password");

        UserModel Model = new UserModel();
//        Admin user = Model.getUser(userName, password);
        PemilikKos pk = Model.getPemilikKos(idpemilik, password);
//        if (user.getUsername() != null) {
//
//            out.println("Login Berhasil, Anda Login sebagai " + user.getUsername());
//            HttpSession session = request.getSession(true);
//            session.setAttribute("username", user.getUsername());
//            session.setAttribute("user", user);
//            response.sendRedirect("homePetugas.jsp");
            //            RequestDispatcher rdp = request.getRequestDispatcher("home");
//            rdp.forward(request, response);
        if (pk.getIdPemilik()!= null) {
           
            HttpSession session = request.getSession(true);
            session.setAttribute("idkos", pk.getIdPemilik());
//            session.setAttribute("user", ds);
            response.sendRedirect("pemilik.jsp");
            //            RequestDispatcher rdp = request.getRequestDispatcher("home");
//            rdp.forward(request, response);
        } else {
            response.sendRedirect("index.jsp?error=yes");

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
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
     * Handles the HTTP
     * <code>POST</code> method.
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
