package org.ecabrerar.examples.servlet.datamanager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author ecabrerar
 * @date Jul 19, 2016
 */
public final class Coneccion {
    
   private static final Coneccion INSTANCIA = new Coneccion();
    
    private Coneccion(){
        setDriver();
    }
    
    public static Coneccion getInstancia(){
        return INSTANCIA;
    }
    
    private void setDriver(){

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Driver not found");
        }
    }
    
    public Connection getConeccion(){
        
        //Establish connection to MySQL database
        String connectionURL = "jdbc:mysql://127.0.0.1/tallerjavadb";
        Connection connection=null;

        try {
            connection = DriverManager.getConnection(connectionURL, "root", "rootweb");
        } catch (SQLException e) {
            System.out.println("Connection failed !!!");
        }
        
        return connection;
    }
    
}
