<%-- 
    Document   : index
    Created on : May 20, 2013, 1:48:57 PM
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
        <title>Makelar Kos</title>

        <link rel="stylesheet" type="text/css" href="style.css" />
        <script type="text/javascript" src="jquery/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="jquery/jquery.gallerax-0.2.js"></script>
    </head>
    <body>
        <div id="bg">
            <div id="outer">
                <div id="header">
                    <div id="logo">
                        <h1>
                            <a href="#">Sikosmaw</a>
                        </h1>
                    </div>
                    <div id ="button">
                        <div align="right">
                            <form action="LoginServlet" method="post">
                                Username<input class="text" name="idpemilik" size="32" maxlength="64" /><br>
                                Password<input type="password" name="password" size="32" maxlength="64" /><br>
                                <a href="registrasi.jsp">Daftar?</a>&nbsp&nbsp<input class="button" type="submit" value="Login" />

                            </form>
                        </div>
                    </div>
                    <div id="nav">
                        <ul>
                            <li class="first active">
                                <a href="index.jsp">Home</a>
                            </li>
                            <li>
                                <a href="daftarkos.jsp">Daftar Kost</a>
                            </li>
                            <li>
                                <a href="about.jsp">About</a>
                            </li>
                            <li class="last">
                                <a href="contact.jsp">Contact</a>
                            </li>
                            <li align="right">
                                <div>

                                    <form action="viewSearching.jsp" method="post"> 
                                        <input  type="text" name="namaKos" id="namaKos" size="32" maxlength="64" /><input class="button" type="submit" value="Search" />
                                      
                                    </form>

                                </div>
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
                        <div id="box1">
                            <h2>
                                Selamat datang di Sikosmaw
                            </h2><img class="left" src="images/pic2.jpg" width="184" height="184" alt="" />
                            <p>
                                <strong>Sikosmaw </strong> adalah website yang menampung data-data kost yang terletak di sekitar kampus Universitas Sanata Dharma
                                Paingan, Maguwoharjo, Depok, Sleman.
                            </p>
                        </div>
                        <div id="box2">
                            <h3>
                                Top Entry Kost
                            </h3>
                            <ul class="imageList">
                                <li class="first">
                                    <img class="left" src="images/melati.jpg" width="72" height="72" alt="" /> <span>Kost yang memiliki jarak terdekat dengan kampus ini sangat diminati mahasiswa khususnya yang suka bangun tidur mepet.
                                        <a href="#">Read more...</a></span>
                                </li>
                                <li>
                                    <img class="left" src="images/melati.jpg" width="72" height="72" alt="" /> <span>Kost yang memiliki jarak terdekat dengan kampus ini sangat diminati mahasiswa khususnya yang suka bangun tidur mepet.
                                        <a href="#">Read more...</a></span>
                                </li>
                                <li class="last">
                                    <img class="left" src="images/melati.jpg" width="72" height="72" alt="" /> <span>Kost yang memiliki jarak terdekat dengan kampus ini sangat diminati mahasiswa khususnya yang suka bangun tidur mepet.
                                        <a href="#">Read more...</a></span>
                                </li>
                            </ul>
                        </div>
                        <div id="box3">
                            <h3>
                                Most Popular
                            </h3><img class="top" src="images/melati.jpg" width="360" height="155" alt="" />
                            <p>
                                Kost yang memiliki jarak terdekat dengan kampus ini sangat diminati mahasiswa khususnya yang suka bangun tidur mepet.
                                <a href="#">Read more...</a></span><br>
                                <strong>Telah dikunjungi sebanyak: 10000</strong>
                            </p>
                        </div>
                        <br class="clear" />
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

