/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.ecabrerar.examples.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ecabrerar
 * Demostrar el uso del metodo init en un servlet
 */
public class ServletMetodoInit extends HttpServlet {

    private Map<String, Integer> notas;
    
    /**
     * El metodo init es llamado solamente cuando el servlet es cargado por primera vez, antes de que la primera peticion sea procesada
     * @param config
     * @throws ServletException 
     */
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config); 
        
        notas = new HashMap<String, Integer>();
        notas.put("Juan Perez", 90);
        notas.put("Juana Perez", 90);
        notas.put("Maria Perez", 75);
        notas.put("Pedro Perez", 90);
        notas.put("Jhon Smith", 90);
        notas.put("Miss Janet", 88);
        
    }
    
    
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
         out.println("<html>");
        out.println("<head><title>Calficiaciones</title></head>");
        out.println("<body>");
        out.println("<h1>Calficiaciones</h1>");
        out.println("<table border=\"1\">");
        out.println("<tr><th>Nombre</th><th>Calificacion</th></tr>");

        for (Map.Entry cal : notas.entrySet()) {

            out.println("<tr>\n" + 
            "<td>"+cal.getKey()+"</td>\n" + 
            "<td>"+ cal.getValue()+"</td>\n" + 
            "</tr>");

        }

        out.println("</table>");
        out.println("</body></html>");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
