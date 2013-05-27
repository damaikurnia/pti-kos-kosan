<%-- 
    Document   : logout
    Created on : May 27, 2013, 11:37:03 PM
    Author     : wieranata
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<meta http-equiv="Refresh">
<%
    session.removeAttribute("username");
    session.removeAttribute("password");
    session.invalidate();
    response.sendRedirect("login.jsp");
%>
