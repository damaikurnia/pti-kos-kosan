<%-- 
    Document   : kirim_sms
    Created on : Jun 1, 2013, 7:30:17 PM
    Author     : Mich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>SMS Gateway</title>

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
							<li>
								<a href="insertkos_admin.jsp">Tambah Kos</a>
							</li>
							<li>
								<a href="#">Update Kos</a>
							</li>
							<li class="first active">
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
                                            <form  action="KirimSMS">
                                                Kirim SMS<br>
                                                <input type="radio" name="for" value="all" checked="checked"/> Kirim ke semua<br>
						<input type="radio" name="for" value="sebagian" /> kirim ke beberapa<br>
						<strong>Kode SMS</strong><br>
						<input type="text" name="idSMS" size="32" maxlength="32" /><br><br><br>
						<textarea name="desripsi" id="des" cols="50%" rows="8" class="af"></textarea><br>
						<input class="button" type="submit" value="Kirim" />
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
