<%-- 
    Document   : prestamo
    Created on : 02-mar-2020, 19:24:09
    Author     : DAW206
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Banco Bosco</title>
    </head>
    <body>
        <%
            ArrayList<String> meses = (ArrayList<String>) request.getAttribute("meses");;%>
        <h1>Banco Bosco</h1>
        <h3>Solicitud de Préstamos</h3>
        <form action="" method="post">
            Nombre: <input type="text" name="nombre">
            <br>
            Cantidad que solicita: <input type="text" name="cantidad">
            <br>
            Interés: <input type="text" name="interes">
            <br>
            Tiempo (meses): <select name="tiempo">
                                <%for (int j = 0; j < meses.size(); j++) {%>
                                <option value="<%= meses.get(j)%>"><%= meses.get(j)%></option>
                                <%}%>
                            </select>
            <br>
            <input type="submit" value="Consultar">     
        </form>
</body>
</html>
