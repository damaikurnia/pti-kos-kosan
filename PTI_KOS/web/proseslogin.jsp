<%-- 
    Document   : proseslogin
    Created on : Dec 12, 2012, 5:29:40 PM
    Author     : user
--%>

<%@ page session="false" %>
<jsp:useBean id="loginBean" scope="page" class="servlet.LoginBean" />
<%
            if (loginBean.login(request.getParameter("formtext1"),
                    request.getParameter("formtext2"))) {
                request.getRequestDispatcher("home.jsp").forward(request, response);
            } else //we have to use sendRedirect because we want to send the ?error part
            //to the Login.jsp page.
            //with RequestDispatcher.forward(), the URL will still be
            //the current URL
            {
                response.sendRedirect("erorLogin.jsp");
            }
%>
