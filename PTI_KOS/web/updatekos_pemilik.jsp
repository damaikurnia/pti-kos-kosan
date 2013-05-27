<%-- 
    Document   : insertkos_pemilik
    Created on : May 20, 2013, 5:25:08 PM
    Author     : wieranata
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Update Kos</title>

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

                            <a href="index.jsp">Logout</a>

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
                        <form  action="updatekos">
                            <div class="entry">
                                <%
                                    try {

                                        String idKos = request.getParameter("idkos");
                                        bean.UserModel PB = new bean.UserModel();
                                %>
                                <table width="900px">
                                    <%
                                        ResultSet result = PB.searchKosID(idKos);
                                        while (result.next()) {%>
                                    <tr>
                                        <td width="118px" align="left">
                                            ID Kos
                                        </td>

                                        <td align="left">
                                            <input type="text" name="idKos" size="30" value="<% out.println(result.getString("idkos"));%>"></input>

                                        </td>
                                    </tr>
                                    <tr>

                                        <td width="118px" align="left">
                                            ID pemilik
                                        </td>

                                        <td>
                                            <input type="text" name="idPemilik" size="30" value="<% out.println(result.getString("idPemilik"));%>"></input>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td width="118px" align="left">
                                            Nama Kos
                                        </td>
                                        <td>
                                            <input type="text" name="namaKos" size="30" value="<% out.println(result.getString("namakos"));%>"></input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="118px" align="left">
                                            Alamat Kos
                                        </td>
                                        <td>
                                            <input type="text" name="alamatKos" size="30" value="<% out.println(result.getString("alamatkos"));%>"></input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="118px" align="left">
                                            Fasilitas
                                        </td>
                                        <td>
                                            <input type="text" name="fasilitas" size="30" value="<% out.println(result.getString("fasilitas"));%>"></input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="118px" align="left">
                                            Google Map
                                        </td>
                                        <td>
                                            <input type="text" name="googlemaps" size="30" value="<% out.println(result.getString("googlemaps"));%>"></input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="118px" align="left">
                                            Status
                                        </td>
                                        <td align="left">
                                            <select name="statuskos">
                                                <option value="<% out.println(result.getString("statuskos"));%>"></option>
                                                <option value="kosong">kosong</option>
                                                <option value="penuh">penuh</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="118px" align="left">
                                            Kategori
                                        </td>
                                        <td align="left">
                                            <select name="kategori">
                                                <option value="<% out.println(result.getString("kategori"));%>"></option>
                                                <option value="L">Laki-laki</option>
                                                <option value="P">Perempuan</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="118px" align="left">
                                            Harga
                                        </td>
                                        <td align="left">
                                            <select name="harga">
                                                <option value="<% out.println(result.getString("harga"));%>"></option>
                                                <option value="< 1000000"> < 1.000.000 </option>
                                                <option value="1000000 - 2500000"> 1.000.000 - 2.500.000 </option>
                                                <option value="> 2500000 "> > 2.500.000 </option>
                                            </select>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <input class="button" type="submit" value="Update" />
                                        </td>
                                    </tr>
                                    <% }%>
                                </table>
                                <%;
                                    } catch (Exception ex) {
                                        out.println("message: " + ex.getMessage());
                                    }%>
                        </form>
                    </div>
                    </div>
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
