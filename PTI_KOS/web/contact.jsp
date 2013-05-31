<%-- 
    Document   : contact
    Created on : May 23, 2013, 2:54:42 PM
    Author     : user
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
		<title>Contact</title>

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
								<form action="" method="post">
									<input class="text" name="search" size="32" maxlength="64" /><input class="button" type="submit" value="Search" />
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
							
							<p>
                                                            <strong>Siskosmaw</strong><br>
                                                            Kampus III Universitas Sanata Dharma,<br>
                                                            Paingan, Maguwoharjo, Depok, Yogyakarta<br>
                                                            Telp: 0274-883037, 883968 ext : 2341, 2320<br>
                                                            Fax: 0274-886529<br>
                                                            Email: fst@usd.ac.id<br>
                                                            
                                      
							</p>
						
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
