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

/**
 *
 * @author wieranata
 */
public class ProsesInsertKos extends HttpServlet {

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
           
        String GoogleMaps = request.getParameter("googlemap");
        String Status = request.getParameter("status");
        String Kategori = request.getParameter("kategori");
        String Harga = request.getParameter("harga");

        bean.UserModel PB = new bean.UserModel();
        PB.insertKos(IdKos, IdPemilik, NamaKos, AlamatKos, Fasilitas, GoogleMaps, Status, Kategori, Harga);
        response.sendRedirect("viewDataBarangPetugas.jsp");
    }
}
