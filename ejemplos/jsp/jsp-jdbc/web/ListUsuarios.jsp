<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="org.ecabrerar.examples.jsp.datamanager.ModeloUsuario"%>
<%@ page import="org.ecabrerar.examples.jsp.entidades.Usuario"%>

<%
ModeloUsuario modelo = new ModeloUsuario();
List<Usuario> usuarios = modelo. getUsuarios();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        
    </head>
    <body>

<table border="1">
            <tr>
                <th>Codigo</th>
                <th>Nombre</th>
                <th>Usuario</th>
            </tr>
            <%
            
            for(Usuario usuario : usuarios){
            %>
            <tr>
                <td>
                    <%= usuario.getCodigo() %> 
                </td>
                <td>
                    <%= usuario.getNombres() %> <%= usuario.getApellidos() %>
                </td>
                <td><%= usuario.getUsuario() %></td>
            </tr>
            <% 
            }
            %>
            </table>
    </body>
</html>