<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.HashMap,java.util.Map"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    </head>
    <body>
        <h1>Calficiaciones Modulo I</h1>
         
        <%-- Expresiones: Son fragmentos de código Java, con la forma <%= expresión %> que se evalúan y se muestran en
             la salida del navegador. En general, dentro de una expresión podemos usar cualquier cosa que usaríamos
             dentro de un System.out.print(expr); 
             
             Scriptlets: Son fragmentos de código Java con la forma <% código %>,
             en general, podemos insertar cualquier código que pudiéramos usar dentro de una función Java. Para acceder
             a la salida del navegador, usamos el objeto implícito out.
             
             
             --%>
         
        <%  Map<String, Integer>    notas = new HashMap<String, Integer>();
        notas.put("Juan Perez", 90);
        notas.put("Juana Perez", 90);
        notas.put("Maria Perez", 75);
        notas.put("Pedro Perez", 90);
        notas.put("Jhon Smith", 90);
        notas.put("Miss Janet", 88);;%>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Calificacion</th>
            </tr><% 
for (Map.Entry cal : notas.entrySet()) {
%>
             
            <tr>
                <td>
                    <%=cal.getKey()%>
                </td>
                <td>
                    <%= cal.getValue()%>
                </td>
            </tr>
             
            <% 
        }%>
        </table>
    </body>
</html>