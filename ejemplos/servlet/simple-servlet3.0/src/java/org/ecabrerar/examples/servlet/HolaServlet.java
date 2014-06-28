/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.ecabrerar.examples.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ecabrerar
 */
@WebServlet(urlPatterns = {"/HolaServlet"})
public class HolaServlet extends HttpServlet{
    
    /**
     * 
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException 
     */
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
          response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet 3.0</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Hola Mundo !!</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
         
     }
     
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
