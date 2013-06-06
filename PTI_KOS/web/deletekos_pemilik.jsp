<%-- 
    Document   : deletekos_Pemilik
    Created on : May 20, 2013, 5:22:37 PM
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
		<title>Delete</title>

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
							<li>
								<a href="insertkos_pemilik.jsp">Insert Kos</a>
							</li>
							<li class="last">
								<a href="updatekos_pemilik.jsp">Update Kos</a>
							</li>
							
							<li class="first active">
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
						Cari berdasarkan <select name="search">
											<option value="id">id kos</option>
											<option value="nama">nama kos</option>
									</select><br>
						<input class="text" name="search" size="32" maxlength="64" /><input class="button" type="submit" value="Cari" />

						<br><br>
						<table border="1">
							<tr><td width="50px" align="center">ID Kos</td>
								<td width="400px" align="center">Nama Kos</td>
								<td width="200px" align="center">Action</td>
							<tr><td width="50px" align="center">111 </td>
								<td width="400px" align="center">Melati </td>
								<td width="200px" align="center"><a href="#">delete</a> </td>
						</table>
						<input class="button" type="submit" value="View all" />

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
