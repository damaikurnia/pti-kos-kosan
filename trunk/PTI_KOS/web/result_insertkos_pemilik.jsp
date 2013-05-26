<%-- 
    Document   : result_insertkos_pemilik
    Created on : May 25, 2013, 8:00:14 AM
    Author     : wieranata
--%><%@page import="bean.Kos"%>


%@page import="bean.Kos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Insert Kos</title>

        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <div id="bg">
            <div id="outer">
                <div id="header">
                    <div id="logo">
                        <h1>
                            <a href="index.jsp">Sikosmaw</a>
                        </h1>
                    </div>
                    <div align="right">
                        <form action="#" method="post">

                            <a href="#">Logout</a>

                        </form>
                    </div>
                    <div id="nav">
                        <ul>
                            <li>
                                <a href="pemilik.jsp">Home Pemilik</a>
                            </li>
                            <li class="first active">
                                <a href="insertkos_pemilik.jsp">Tambah Kos</a>
                            </li>
                            <li>
                                <a href="#">Update Kos</a>
                            </li>
                            <li class="last">
                                <a href="deletekos_pemilik.jsp">Delete Kos</a>
                            </li>
                        </ul>
                        <br class="clear" />
                    </div>
                </div>
                <div id="banner">
                    <img src="images/pic1.jpg" width="932" height="172" alt="" />
                </div>
                <div id="main">
                    <div id="sidebar">
                        <h3>
                            Kategori
                        </h3>
                        <ul class="linkedList">
                            <li class="first">
                                <a href="#">Laki-laki</a>
                            </li>
                            <li>
                                <a href="#">Perempuan</a>
                            </li>
                        </ul>

                    </div>
                    <div id="content">
                        <form method="post" action="Proses">
                                    <table width="900px">
                                        <tr>
                                            <td width="118px" align="left">
                                                ID Kos
                                            </td>
                                            <td align="left">
                                                <%
                                            bean.UserModel um = new bean.UserModel();
                                            String idkos = um.getKodePemilikBaru();
                                            if (idkos == null) {
                                                idkos = "1";
                                                out.print(idkos);
                                            } else {
                                                int bantu = Integer.parseInt(idkos) + 1;
                                                idkos = Integer.toString(bantu);
                                                out.print(Integer.toString(bantu));
                                            }%>
                                        </td>
                                        </tr>
                                        <tr>
                                            <td width="118px" align="left">
                                                ID pemilik
                                            </td>
                                            <td align="left">
                                                <input class="text" name="idpemilik" size="32" maxlength="90" /><br>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td width="118px" align="left">
                                                Nama Kos
                                            </td>
                                            <td align="left">
                                                <%
                                                String namakos = request.getParameter("namakos");
                                                out.print(namakos);
                                                %>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="118px" align="left">
                                                Alamat Kos
                                            </td>
                                            <td align="left">
                                                <%
                                                String alamatkos = request.getParameter("alamatkos");
                                                out.print(alamatkos);
                                                %>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="118px" align="left">
                                                Fasilitas
                                            </td>
                                            <td align="left">
                                                <%
                                                String fasilitas = request.getParameter("fasilitas");
                                                out.print(fasilitas);
                                                %>
                                            </td>
                                        </tr>
                                            <tr>
                                            <td width="118px" align="left">
                                                Google Map
                                            </td>
                                            <td align="left">
                                                <%
                                                String googlemaps = request.getParameter("googlemaps");
                                                out.print(googlemaps);                                                 
                                                %>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="118px" align="left">
                                                Status
                                            </td>
                                            <td align="left">
                                                <%
                                                String statuskos = request.getParameter("statuskos");
                                                out.print(statuskos);
                                                %>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="118px" align="left">
                                                Kategori
                                            </td>
                                            
                                            <td align="left">
                                                <%
                                                String kategori = request.getParameter("kategori");
                                                out.print(kategori);
                                                %>
                                            
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="118px" align="left">
                                                Harga
                                            </td>
                                            <td align="left">
                                                <%
                                                String harga = request.getParameter("harga");
                                                out.print(harga);
                                                bean.UserModel um1 = new bean.UserModel();
                                                  
                                                bean.Kos k = new Kos(idkos, namakos, alamatkos, fasilitas, googlemaps, statuskos, harga, idpemilik);
                                                um1.insertKos(k);                                                         
                                                %>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td>
                                                <input class="button" type="submit" value="Insert" />
                                            </td>
                                        </tr>
                                </table>
                             </form>

                                </div>    
                            </div>

                    </div>
                    <br class="clear" />
                </div>
            </div>
            <div id="copyright">
                &copy; Sikosmaw.com | Design by Reaper</a>
            </div>
        </div>
    </body>
</html>
