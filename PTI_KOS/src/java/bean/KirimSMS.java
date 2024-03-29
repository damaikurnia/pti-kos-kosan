/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mich
 */
public class KirimSMS extends HttpServlet {

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
        String nomor = request.getParameter("idSMS");
        bean.UserModel UM = new UserModel();
        String isiSMS = UM.TampilIsiSMS(nomor);
        String jawaban = request.getParameter("for");
        System.out.println(jawaban);

        if (jawaban.equals("all")) {
            bean.UserModel um1 = new bean.UserModel();
            List<String> tangkepISI = um1.TampilNomor();
            int kuota = tangkepISI.size();
            int a = 0;
            while (a < kuota) {
                bean.UserModel PB = new bean.UserModel("sms");
                try {
                    PB.KirimSMS(tangkepISI.get(a),isiSMS);
                    HttpSession h = request.getSession(true);
                    h.setAttribute("id", nomor);
                } catch (SQLException ex) {
                    Logger.getLogger(InsertSMS.class.getName()).log(Level.SEVERE, null, ex);
                }
                a++;
            }
            response.sendRedirect("sms.jsp?nomor=" + nomor + "");
        } else {
//            bean.UserModel PB = new bean.UserModel("sms");
//            try {
//                PB.KirimSMS(isiSMS);
//                HttpSession h = request.getSession(true);
//                h.setAttribute("id", nomor);
//                response.sendRedirect("sms.jsp?nomor=" + nomor + "");
//            } catch (SQLException ex) {
//                Logger.getLogger(InsertSMS.class.getName()).log(Level.SEVERE, null, ex);
//            }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(KirimSMS.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(KirimSMS.class.getName()).log(Level.SEVERE, null, ex);
        }
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
