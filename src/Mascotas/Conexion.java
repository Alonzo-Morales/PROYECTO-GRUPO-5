package Mascotas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion 
{
    Connection con;
    
    public Conexion()
    {}
    
    public Connection getConectar()
    {
        con = null;
        
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/refugio", "root", "K-analy29.");
        }
        catch(ClassNotFoundException | SQLException e)
        {
            con = null;
        }       
        
        return con;
    }
    
    public Connection getDesconectar()
    {
       con = null;
       return null;
    }
    
}
