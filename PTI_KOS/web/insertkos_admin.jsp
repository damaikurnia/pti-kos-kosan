<%-- 
    Document   : insertkos
    Created on : May 20, 2013, 1:57:55 PM
    Author     : wieranata
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

        Design by Free CSS Templates
        http://www.freecsstemplates.org
        Released for free under a Creative Commons Attribution License

        Name       : Serious Face
        Version    : 1.0
        Released   : 20130222

-->
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
                                <a href="admin.jsp">Home Admin</a>
                            </li>
                            <li class="first active">
                                <a href="insertkos_admin.jsp">Tambah Kos</a>
                            </li>
                            <li>
                                <a href="#">Update Kos</a>
                            </li>
                            <li>
                                <a href="sms.jsp">Kirim SMS</a>
                            </li>
                            <li class="last">
                                <a href="deletekos_admin.jsp">Delete Kos</a>
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
                        <form action="#" method="post">
                            <table width="900px">
                                <tr>
                                    <td width="118px" align="left">
                                        ID pemilik
                                    </td>
                                    <td align="left">
                                        111
                                    </td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        ID Kos
                                    </td>
                                    <td align="left">
                                        101
                                    </td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        Nama Kos
                                    </td>
                                    <td align="left">
                                        <input class="text" name="nama" size="32" maxlength="90" /><br>
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
                                        No Telp Kos
                                    </td>
                                    <td align="left">
                                        <input class="text" name="telp" size="32" maxlength="90" />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        Status
                                    </td>
                                    <td align="left">
                                        <select name="status">
                                            <option value="kosong">kosong</option>
                                            <option value="penuh">penuh</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        Deskripsi
                                    </td>
                                    <td align="left">
                                        <textarea name="desripsi" id="des" cols="50%" rows="8" class="af"></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        Foto
                                    </td>
                                    <td align="left">
                                        <input class="text" name="telp" size="32" maxlength="90" /><input class="button" type="submit" value="browse" />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="118px" align="left">
                                        Google Map
                                    </td>
                                    <td align="left">
                                        <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://goo.gl/maps/NOYdQ"></iframe><br /><small>View <a href="http://goo.gl/maps/NOYdQ" style="color:#0000FF;text-align:left">Kampus III Paingan</a> in a larger map</small>
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

