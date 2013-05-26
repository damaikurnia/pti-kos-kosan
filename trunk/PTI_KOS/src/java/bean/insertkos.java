package bean;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author wieranata
 */
public class insertkos extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        String IdKos = request.getParameter("idkos");
        String IdPemilik = request.getParameter("idpemilik");
        String NamaKos = request.getParameter("namakos");
//        System.out.println(tgl);
        String AlamatKos = request.getParameter("alamatkos");
        String Fasilitas = request.getParameter("fasilitas");

        String GoogleMaps = request.getParameter("googlemaps");
        String Status = request.getParameter("statuskos");
        String Kategori = request.getParameter("kategori");
        String Harga = request.getParameter("harga");

        PemilikKos p=new PemilikKos();
        p.setIdPemilik(IdPemilik);
        Kos k = new Kos(IdKos,NamaKos, AlamatKos, Fasilitas, GoogleMaps, Status,Harga ,Kategori ,p);
        bean.UserModel PB = new bean.UserModel();
        try {
            PB.insertKos(k);
            HttpSession h=request.getSession(true);
            h.setAttribute("id",k.getIdKos());
            response.sendRedirect("kos_pemilik.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(insertkos.class.getName()).log(Level.SEVERE, null, ex);
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
