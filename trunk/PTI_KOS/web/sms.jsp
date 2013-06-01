<%-- 
    Document   : sms
    Created on : May 20, 2013, 1:58:56 PM
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
                                                <%out.println(request.getParameter("nomor"));%> Sudah Tersimpan
						<input type="checkbox" name="for" value="all" /> all<br>
						<input type="checkbox" name="for" value="sebagian" checked="checked" /> kirim ke beberapa<br>
						<strong>Nomor</strong><br>
						<input type="text" name="nomor" size="32" maxlength="32" /><br><br><br>

						<input type="checkbox" name="action" value="update" /> update<br>
						<input type="checkbox" name="action" value="info" /> info<br>
						<textarea name="desripsi" id="des" cols="50%" rows="8" class="af"></textarea><br>
						<input class="button" type="submit" value="Kirim" />






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

