<%-- 
    Document   : resultregistrasi
    Created on : May 23, 2013, 11:58:36 PM
    Author     : Mich
--%>

<%@page import="bean.PemilikKos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Registrasi Pemilik Baru</title>

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

                            <a href="index.jsp">Kembali ke halaman awal</a>

                        </form>
                    </div>
                    <div id="nav">
                        <ul>
                            <li>
                                <a href="index.jsp">Home</a>
                            </li>
                            <li>
                                <a href="#">About</a>
                            </li>
                            <li class="last">
                                <a href="#">Contact</a>
                            </li>
                            <li align="right"></li>
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
                            <table width="900px">
                                <tr>
                                    <td width="118px" align="left">
                                        ID pemilik
                                    </td>
                                    <td align="left">
                                        <%
                                            bean.UserModel um = new bean.UserModel();
                                            String id = um.getKodePemilikBaru();
                                            if (id == null) {
                                                id = "1";
                                                out.print(id);
                                            } else {
                                                int bantu = Integer.parseInt(id) + 1;
                                                id = Integer.toString(bantu);
                                                out.print(Integer.toString(bantu));
                                            }
                                        %>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        Nama Pemilik
                                    </td>
                                    <td align="left">
                                        <%
                                        String nama = request.getParameter("nama");
                                        out.print(nama);
                                        %>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        Alamat Pemilik
                                    </td>
                                    <td align="left">
                                        <%
                                        String alamat = request.getParameter("alamat");
                                        out.print(alamat);
                                        %>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        No Telp
                                    </td>
                                    <td align="left">
                                        <%
                                        String noTelp = request.getParameter("noTelp");
                                        String password = request.getParameter("pw");
                                        out.print(noTelp);
                                        bean.UserModel um2 = new bean.UserModel();
                                        bean.PemilikKos pk = new PemilikKos(id, nama, alamat, noTelp, password);
                                        um2.insertPemilikKos(pk);
                                        %>
                                    <td>
                                </tr>
                                    
                            </table>

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
