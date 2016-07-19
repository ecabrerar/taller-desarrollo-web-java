package org.ecabrerar.examples.servlet.datamanager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author ecabrerar
 * @date Jul 19, 2016
 */
public class Coneccion {
    
    private static Coneccion INSTANCIA = new Coneccion();
    
    private Coneccion(){ 
    }
    
    public static Coneccion getInstancia(){
        return INSTANCIA;
    }
    
   private void setDriver(){

        //Cargar el driver de mysql
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Driver not found");
        }
    }
    
    public Connection getConeccion() throws SQLException{
        
         setDriver();
         
        //Establish connection to MySQL database
        String connectionURL = "jdbc:mysql://127.0.0.1/tallerjavadb";
        Connection connection=null;

        try {
            connection = DriverManager.getConnection(connectionURL, "root", "rootweb");
        } catch (SQLException e) {
            System.out.println("Connection failed !!!");
            throw e;
        }
        
        return connection;
    }
    
}
