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
                                <a href="kos_pemilik.jsp">Kos</a>
                            </li>
                            <li>
                                <a href="insertkos_pemilik.jsp?idpemilik=<%out.println(request.getParameter("idpemilik"));%>">Tambah Kos</a>
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
                    <%
                        try {


                            String id =request.getParameter("idpemilik");
                            bean.UserModel PB = new bean.UserModel();
                            ResultSet result = PB.searchKosID(id);
                            while (result.next()) {%>


                    <div id="content">
                        <form action="#" method="post">

                            <table width="900px">
                                <tr>
                                    <td width="118px" align="left">
                                        ID pemilik
                                    </td>
                                    <td align="left">
                                        <% out.println(result.getString("idPemilik"));%>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        ID Kos
                                    </td>
                                    <td align="left">
                                        <% out.println(result.getString("idKos"));%>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        Nama Kos
                                    </td>
                                    <td align="left">
                                        <% out.println(result.getString("namaKos"));%>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        Alamat Kos
                                    </td>
                                    <td align="left">
                                        <% out.println(result.getString("alamatKos"));%>
                                    <td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        Status
                                    </td>
                                    <td align="left">
                                        <% out.println(result.getString("statuskos"));%>
                                    </td>
                                </tr>

                            
                                <tr>
                                    <td width="118px" align="left">
                                        Google Map
                                    </td>
                                    <td align="left">
                                        <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="<% out.println(result.getString("googleMaps"));%>"></iframe><br />
                                        View with google map<a href="<% out.println(result.getString("googleMaps"));%>" style="color:#0000FF;text-align:left">Kampus III Paingan</a> in a larger map</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td>

                                    </td>
                                    <td>
                                        <input class="button" type="submit" value="Insert" />
                                    </td>
                                </tr>

                            </table>
                            <%};

                                } catch (Exception ex) {
                                    out.println("message: " + ex.getMessage());
                                }
                            %>
                        </form>

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
