package org.ecabrerar.examples.jsp.datamanager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author ecabrerar
 * @date Jul 19, 2016
 */
public class Coneccion { 
       
    private static void setDriver(){

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Driver not found");
        }
    }
    
    public static Connection getConeccion(){
        
        setDriver();
        
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
