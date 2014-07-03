<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="org.ecabrerar.examples.servlet.datamanager.ModeloUsuario"%>
<%@ page import="org.ecabrerar.examples.servlet.entidades.Usuario"%>
<%@page import="java.util.*" %>


<%
     String usuario = request.getParameter("usuario");
     String pass = request.getParameter("pass");


    //Hacer una consulta a la base de datos para determinar si el usuario esta registrado       
     ModeloUsuario m = new ModeloUsuario();
     Usuario  usu =  m.checkUsuario(usuario,pass);
         
   
        
     if(usu instanceof Usuario){
         System.out.println("Usuario registrado");
        
         /*
         En JSP no necesitamos crear la session 
         HttpSession session = request.getSession(true);, ya 
         viene inicializada         
         */
         session.setAttribute("currentSessionUser",usu); 
         response.sendRedirect("index.jsp");
         
     }else{
         
         System.out.println("Usuario no registrado");
        //Enviando mensaje a la pagina de login
         session.setAttribute("loginFailed","Usuario no registrado"); 
         response.sendRedirect("login.jsp");
         
     }
        

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    </head>
    <body>
    
    
    </body>
</html>