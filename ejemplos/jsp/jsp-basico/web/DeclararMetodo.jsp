<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%!
private String ahora()
{
return ""+new java.util.Date();
}
%>
<%! java.util.Date primerAcceso=new java.util.Date(); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    </head>
    <body>
   Fecha de acceso a esta pagina <%= ahora() %>

    </body>
</html>