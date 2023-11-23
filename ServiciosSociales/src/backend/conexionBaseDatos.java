/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backend;

//Importa todas las clases de SQL, las cuales permiten trabajar con BD(Base de Datos) y 
//tablas de la BD
import java.sql.*;

/*Esta es la clase conexionBaseDatos, la cual nos permite hacer conexion 
con la base de datos que es desarrollada en MySQL como motor de BD*/

public class conexionBaseDatos {
    /*Se define la variable bd de tipo static para poder utilizarla en todo el 
    proyecto y ella lo que guarda es la base de datos que se va a utilizar*/
    static String bd = "clientes1112023";
    static String login = "root";
    static String password = "";
    static String url = "jdbc:mysql://localhost/" +bd;
    /*El url especifica la dirección donde esta ubicada la BD, si por ejemplo 
    la BD está en un servidor, ahí escribiríamos la dirección IP correspondiente*/
    
    //Define la variable con de tipo Connection que nos va a permitir hacer 
    //conexión con la BD de MySQL
    public static Connection con = null;
    
    //Define la variable stmt para poder utilizar los comandos con los cuales
    //vamos a manipular los datos en las tablas de la BD, comandos como: INSERT, 
    //SELECT, UPDATE, DELETE, etc.
    public static Statement stmt;
    
    //Procedimiento que nos permite hacer conexión con la BD
    public void conectarbase()
    {
        try
        {
            //Acceder al driver de conexion con MySQL
            Class.forName("com.mysql.jdbc.Driver");
            //Aqui conecta con la base de datos especificada en el url establecido
            //con los parametros de login y password
            con = DriverManager.getConnection(url, login, password);
            //Permite establecer o crear acciones o comandos sobre las tablas 
            //de la BD que esta activa.
            stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, 
                    ResultSet.CONCUR_READ_ONLY);
            //Si con no es null, quiere decir que la conexión fue exitosa
            if(con != null)
            {
                System.out.println("Conexion con Base de Datos " + con + " Correcta.");
            }
        }
        //Exepcion que dispara un error en caso de que haya algun error de 
        //parte de la tabla de SQL
        catch(SQLException ex)
        {
            System.out.println(ex);
        }
        //Exepcion que dispara un error en caso de que no encuentre la base
        catch(ClassNotFoundException ex)
        {
            System.out.println(ex);
        }
    }   //Fin de conectarbase
    
    //Procedimiento que permite desconectar la BD
    public void desconectarbase()
    {
        try
        {
            con.close();
        }
        catch(Exception ex)
        {
            System.out.println(ex);
        }
    
    }
} //Fin de la clase
