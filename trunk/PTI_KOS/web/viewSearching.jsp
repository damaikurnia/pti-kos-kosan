<%-- 
    Document   : viewSearching
    Created on : 31 Mei 13, 16:16:11
    Author     : hp
--%>

<%@ page import="java.util.*" %> 
<html>
<head>
</head>
<body>

<br><br><br><br><br><br>
<table width="700px" align="center" 
style="border:1px solid #000000;">
<tr>
<td colspan=8 align="center" 
style="background-color:ffeeff">
<b>Kos Record</b></td>
</tr>
<tr style="background-color:efefef;">
<td><b>IdKos</b></td>
<td><b>IdPemilik</b></td>
<td><b>NamaKos</b></td>
<td><b>AlamatKos</b></td>
<td><b>Fasilitas</b></td>
<td><b>GoogleMap</b></td>

</tr>
<%
int count=0;
String color = "#F9EBB3";


if(request.getAttribute("empList")!=null)
{
ArrayList al = (ArrayList)request.getAttribute("empList");
Iterator itr = al.iterator();


while(itr.hasNext()){

if((count%2)==0){ 
color = "#eeffee"; 
}
else{
color = "#F9EBB3";
}
count++;
ArrayList empList = (ArrayList)itr.next();
%>
<tr style="background-color:<%=color%>;">
<td><%=empList.get(0)%></td>
<td><%=empList.get(1)%></td>
<td><%=empList.get(3)%></td>
<td><%=empList.get(4)%></td>
<td><%=empList.get(5)%></td>
<td><%=empList.get(6)%></td>
<td><%=empList.get(7)%></td>
<td><%=empList.get(8)%></td>
</tr>
<%
}
}
%> 
<%
if(count==0){
%>
<tr>
<td colspan=8 align="center" 
style="background-color:eeffee"><b>No Record</b></td>
</tr>
<%
}
%>
</table>
</body>
</html>
