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
                                <a href="updatekos_pemilik">Update Kos</a>
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
                            String idPemilik = request.getParameter("idpemilik");
                            bean.UserModel PB = new bean.UserModel();
                            ResultSet result = PB.searchPemilikKosID(idPemilik);
                            while (result.next()) {%>     
                    <div id="content">
                        <form  action="insertkos">
                            <table width="900px">
                                <tr>
                                    <td width="118px" align="left">
                                        ID Kos
                                    </td>

                                    <td align="left">
                                        <%
                                            bean.UserModel um = new bean.UserModel();
                                            String id = um.getKodeKosBaru();
                                            if (id == null) {
                                                id = "1";
                                                                                       %> <input readonly class="text" name="idkos" size="5" maxlength="90" value="<%   out.print(id);%>"/><br><%
                                              
                                            } else {
                                                int bantu = 0;
                                                bantu = Integer.parseInt(id) + 1;
                                                                                       %> <input readonly class="text" name="idkos" size="5" maxlength="90" value="<% out.print(Integer.toString(bantu));%>" /><br><%
                                               
                                            }
                                        %>
                                    </td>
                                </tr>
                                <tr>
                                   
                                    <td width="118px" align="left">
                                        ID pemilik
                                    </td>
                                    <td>
                                                <input readonly class="text" name="idPemilik" value="<% out.println(result.getString(1));%>" size="30"></input>
                                              
                                            </td>
                                </tr>

                                <tr>
                                    <td width="118px" align="left">
                                        Nama Kos
                                    </td>
                                    <td align="left">
                                        <input class="text" name="namakos" size="32" maxlength="90" /><br>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        Alamat Kos
                                    </td>
                                    <td align="left">
                                        <input class="text" name="alamatkos" size="90" maxlength="100" />
                                    <td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        Fasilitas
                                    </td>
                                    <td align="left">
                                        <textarea name="fasilitas" id="des" cols="50%" rows="8" class="af"></textarea>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        Google Map
                                    </td>
                                    <td align="left">
                                        <input class="text" name="googlemaps" size="90" maxlength="100" />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        Status
                                    </td>
                                    <td align="left">
                                        <select name="statuskos">
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
                                            <option value="< 1000000"> < 1.000.000 </option>
                                            <option value="1000000 - 2500000"> 1.000.000 - 2.500.000 </option>
                                            <option value="> 2500000 "> > 2.500.000 </option>
                                        </select>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>
                                        <input class="button" type="submit" value="Insert" />
                                    </td>
                                </tr>
                            </table>
                              
                            <%;}

                                                            }catch (Exception ex) {
                                    out.println("message: " + ex.getMessage());
                                }
                            %>
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
