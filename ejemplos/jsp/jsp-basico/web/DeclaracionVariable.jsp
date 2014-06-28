<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%! int numeroAccesos=0; %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    </head>
    <body>
        <%-- Declaraciones: Contienen declaraciones de variables o métodos, con la forma <%! declaración %>. Estas
             variables o métodos serán accesibles desde cualquier lugar de la página JSP. Hay que tener en cuenta que el
             servidor transforma la página JSP en un servlet, y éste es usado por múltiples peticiones, lo que provoca
             que las variables conserven su valor entre sucesivas ejecuciones.--%>
         
        <%=
"La página ha sido accedida "+(++numeroAccesos)+
" veces desde el arranque del servidor"
%>
    </body>
</html>