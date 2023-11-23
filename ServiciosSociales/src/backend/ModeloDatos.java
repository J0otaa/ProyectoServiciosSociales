/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backend;

//Aqui se importa la clase sql con todas sus clases para poder utilizar todos 
//los comandos de sql que manipulan tablas en las bases de datos
import java.sql.*;
//Aqui importamos el objeto JTable,JTextField y JComboBox para poder utilizarlo en esta clase
//que es de tipo JavaClass y no una clase de tipo JFrame
import javax.swing.JTextField;
import javax.swing.JComboBox;
import javax.swing.JTable;


public class ModeloDatos {
    
//Instancia la clase conexionBaseDatos para pueda leer los datos alamcenados en la base de datos    
    conexionBaseDatos cn = new conexionBaseDatos();
    
    //Se definen estas variables de tipo static para poderlas utilizar en todo
    //el proyecto donde se requiera
    static String pUsuario;
    static String pCategoria;
    
    //Funcion para buscar una identificacion de un cliente en la tabla de la base de datos
    public int buscaridentificacion(String ide)
    {
        //La variable enco permte controlar si un cliente esta almacenado o no 
        //esta almacenado inicia en 0 partiendo del hecho de que no esta almacenado
        int enco = 0;
        try
        {
            //se llama la variable cn que es la instanciada de la base de datos 
            cn.conectarbase();
            //Comando en SQL que selecciona un campo en funcion de lo que tenga
            //la variable ide
            String query = "SELECT * FROM SERVICIOS_SOCIALES WHERE IDENTIFICACION = '" +ide+ "'";
            //Se colocan comillas simples y las comillas dobles en ese orden porque
            //ide es varchar osea que si fuera entero o otro tipo nada mas necesitaria comllas dobles
            
            //Esta instrucion en query permite seleccionar todos los registros donde
            //la identificacion sea igual a ID
            ResultSet rs = cn.stmt.executeQuery(query);
            //Aqui ejecuta la instruccion en SQL que está almacenada en la variable query
            
            rs.first(); //Ubica primer registro del rs
            if (rs != null) //Si no esta vacio significa que hay datos
            {
                //Condición que verifica si la identificacion fue encontrada y 
                //almacenada en la variable rs
                if (ide.equals(rs.getString("Identificacion"))) {
                    enco = 1; //Asigna 1 a enco porque la identificacion fue encontrada  
                }
            }
        }
        //Recordatorio; el catch captura excepciones de algun tipo de error que 
        //no pudo hacer con las instrucciones del try
        catch(Exception e)
        {
            System.out.println(e);
        }
        return enco;
    } //Fin de la funcion
    
    public boolean ingresarcliente (String ide, String nom, String dire, int mon, String fecha)
    {
        try
        {
            cn.conectarbase();
            //Cuando se insertan los datos desde Java es importante tener en 
            //cuenta que no deben haber espacios entre los campos y tampoco en 
            //los valores ya que si existen espacios entre ellos no se agregara
            //adecuadamente los valores y habran errores
            //Ademas que se necesita poner las comillas simples y las comillas 
            //dobles porque esta ingresandolo desde fuera de el ambiente
            
            //Comando en SQL que inserta en la tabla Servicios_Sociales
            String query = "INSERT INTO SERVICIOS_SOCIALES (IDENTIFICACION,NOMBRE,DIRECCION,MONTO,FECHA) VALUES ('"+ide+"','"+nom+"','"+dire+"','"+mon+"','"+fecha+"')";
            cn.stmt.execute(query);
            //Aqui ejecuta la instruccion en SQL que está almacenada en query
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        finally
        {
            try
            {
                cn.desconectarbase();
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
        }
        return true;
    } //Fin de la función
    
    //Procedimiento que permite mostrar los datos de un 
    public void Consultar_Datos(String ide, JTextField Campo_Nombre, JTextField Campo_Direccion, JTextField Campo_Monto, JTextField Campo_Fecha)
    {
        try
        {
            cn.conectarbase();
            String query = "SELECT * FROM Servicios_Sociales WHERE IDENTIFICACION = '"+ide+"'";
            ResultSet rs = cn.stmt.executeQuery(query);
            rs.first();
            if (rs != null) {
                if (ide.equals(rs.getString("Identificacion"))) 
                {
                    Campo_Nombre.setText(rs.getString("Nombre"));
                    Campo_Direccion.setText(rs.getString("Direccion"));
                    Campo_Monto.setText(rs.getString("Monto"));
                    Campo_Fecha.setText(rs.getString("Fecha"));
                }
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        finally 
        {
            try
            {
                cn.desconectarbase();
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
        }
    } //Fin de la función
} //Fin de la clase
