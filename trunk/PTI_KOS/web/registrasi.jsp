<%--
    Document   : insertkos_pemilik
    Created on : May 20, 2013, 5:25:08 PM
    Author     : wieranata
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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
									Nama Pemilik
								</td>
								<td align="left">
									Surono
								</td>
							</tr>
							<tr>
								<td width="118px" align="left">
									Alamat Pemilik
								</td>
								<td align="left">
									<input class="text" name="nama" size="32" maxlength="90" /><br>
								</td>
							</tr>
							<tr>
								<td width="118px" align="left">
									Nomor Telepon Pemilik
								</td>
								<td align="left">
									<input class="text" name="alamatkos" size="90" maxlength="100" />
								<td>
							</tr>


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
