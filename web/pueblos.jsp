<%-- 
    Document   : pueblos
    Created on : 10-feb-2020, 21:14:42
    Author     : Sergio
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Poblaciones" method="POST">

            <% String provinciaActiva = (String) request.getAttribute("provincia");
                ArrayList<String> pueblos = (ArrayList<String>) request.getAttribute("pueblos");
                ArrayList<String> provincias = (ArrayList<String>) request.getAttribute("provincias");
            %>
            <h1>Pueblos de Castilla-La Mancha</h1>

            Provincias; <select name="pueblos">
                <% for (int i = 0; i < provincias.size(); i++) {%>
                <option value="<%= provincias.get(i)%>"><%= provincias.get(i)%>
                    <% }%>
            </select>

            <h2>Provincia activa: <%= provinciaActiva%></h2>
            Pueblos: <select name="pueblos">
                <% for (int i = 0; i < pueblos.size(); i++) {%>
                <option value="<%= pueblos.get(i)%>"><%= pueblos.get(i)%>
                    <% }%>
            </select>
        </form>
    </body>
</html>
