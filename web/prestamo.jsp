<%-- 
    Document   : prestamo
    Created on : 02-mar-2020, 19:24:09
    Author     : DAW206
--%>

<%@page import="modelo.Prestamo"%>
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
            ArrayList<String> meses = (ArrayList<String>) request.getAttribute("meses");
            Prestamo prestamo = (Prestamo) request.getAttribute("prestamo");
            String nombre = (String) request.getAttribute("nombre");
            if(nombre == null){
                nombre = "";
            }
            String selected = "";
            String cantidad = "";
            String interes = "";
            int tiempo = 1;
            if(prestamo != null){
                cantidad = String.valueOf(prestamo.getCantidad());
                interes = String.valueOf(prestamo.getInteres());
                tiempo = prestamo.getTiempo();
            }
        %>
        <h1>Banco Bosco</h1>
        <h3>Solicitud de Préstamos</h3>
        <form action="" method="post">
            Nombre: <input type="text" name="nombre" value="<%=nombre%>">
            <br>
            Cantidad que solicita: <input type="text" name="cantidad" value="<%=cantidad%>">
            <br>
            Interés: <input type="text" name="interes" value="<%=interes%>">
            <br>
            Tiempo (meses): <select name="tiempo">
                                <%for (int j = 0; j < meses.size(); j++) {%>
                                
                                <% if(tiempo == Integer.parseInt(meses.get(j))){ 
                                    selected = "selected";
                                } else{
                                    selected = "";
                                }%>
                                <option value="<%= meses.get(j)%>" <%=selected%>><%= meses.get(j)%></option>
                                <%}%>
                            </select>
            <br>
            <input type="submit" value="Consultar">     
        </form>
        <% if(prestamo != null){ %>
        <h1>Importe Total del Préstamo: <%=prestamo.getImportePrestamo()%></h1>
        <%}%>
</body>
</html>
