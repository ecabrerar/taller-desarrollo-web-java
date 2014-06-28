package org.ecabrerar.examples.servlet.datamanager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.ArrayList;
import java.util.List;
import org.ecabrerar.examples.servlet.entidades.Usuario;



public class ModeloUsuario {
    private  Connection conn ;
    public ModeloUsuario(){
        //Iniciando la coneccion en el constructor para poder usarla en todos los metodos
      conn = Coneccion.getConeccion();        
    }
    
    /**
     * Metodo para obtener un listado de todos los usuarios registrados
     * @return
     */
    public List<Usuario> getUsuarios(){
        
        List<Usuario> usuarios = new ArrayList<Usuario>();
        Statement stmt = null;
        ResultSet rs = null;    
        
       
        try {
            
            stmt =  conn.createStatement();
            rs = stmt.executeQuery("select * from USUARIO");
            
            while(rs.next()){ 
                
                Usuario usuario = new Usuario();
                usuario.setCodigo(rs.getInt("CODIGO"));
                usuario.setNombres(rs.getString("NOMBRES"));
                usuario.setApellidos(rs.getString("APELLIDOS"));
                usuario.setUsuario(rs.getString("USUARIO"));
                usuario.setPass(rs.getString("PASS"));
                usuarios.add(usuario);
            }
            
            
        } catch (SQLException e) {
            System.out.println("Error en el SQl");
        }        
        
        
        return usuarios;
        
    }
    
    /**
     *Comprobar si un usuario esta registrado en la base de datos
     * @param usuario
     * @param pass
     * @return
     */
    public Usuario checkUsuario(String usuario, String pass){
        
        
        PreparedStatement pstmt = null;
        ResultSet rs = null;    
        
        Connection conn = Coneccion.getConeccion();
        Usuario usuario1 = null;
        
        try {
            
            pstmt =  conn.prepareStatement("select * from USUARIO where USUARIO = ? and PASS= ?");
            pstmt.setString(1, usuario);
            pstmt.setString(2, pass);
            rs =  pstmt.executeQuery();
            
            System.out.println("Usuario: "+usuario + " Pass : "+pass);
            
            
            
         if(rs.next()){
              
                
                usuario1 = new Usuario();
                usuario1.setCodigo(rs.getInt("CODIGO"));
                usuario1.setNombres(rs.getString("NOMBRES"));
                usuario1.setApellidos(rs.getString("APELLIDOS"));
                usuario1.setUsuario(rs.getString("USUARIO"));
                usuario1.setPass(rs.getString("PASS"));
               
            }       
           
        } catch (SQLException e) {
            System.out.println("Error en el SQl"+e.getMessage());
            return null;
        }
        
        return usuario1;
    }
    
   
    
}
