using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void ValidaPoliticas(object sender, ServerValidateEventArgs args) {
        args.IsValid = politicas.Checked;
    }
    // Punto 3, si no hay errores en el formulario, se carga un nuevo usuario a la DB.
    protected void SiguientePaso(object sender, EventArgs e)
    {
        string fechaNac = dia.Text + "-" + mes.SelectedValue + "-" + anio.Text;
        if (Page.IsValid)
        {
            InsertarUsuario(nombre.Text, apellidos.Text, usuario.Text, pass.Text, fechaNac, sexo.SelectedValue, telefono.Text, alternativo.Text, ubicacion.SelectedValue);
        }
    }
    public static void InsertarUsuario(string nombre, string apellidos, string usuario, string pass, string fechaNac, string sexo, string telefono, string correoAlt, string ubicacion) 
    {
        MySqlConnection conn = Conexion();
        string consulta = "INSERT INTO usuario VALUES (@nombre, @apellidos, @usuario, @pass, @fechaNac, @sexo, @telefono, @correoAlt, @ubicacion)";
        try
        {
            conn.Open();
            MySqlCommand comando = conn.CreateCommand();
            comando.Connection = conn;
            comando.Parameters.AddWithValue("@nombre", nombre);
            comando.Parameters.AddWithValue("@apellidos", apellidos);
            comando.Parameters.AddWithValue("@usuario", usuario);
            comando.Parameters.AddWithValue("@pass", pass);
            comando.Parameters.AddWithValue("@fechaNac", fechaNac);
            comando.Parameters.AddWithValue("@sexo", sexo);
            comando.Parameters.AddWithValue("@telefono", telefono);
            comando.Parameters.AddWithValue("@correoAlt", correoAlt);
            comando.Parameters.AddWithValue("@ubicacion", ubicacion);
            comando.CommandText = consulta;
            comando.ExecuteNonQuery();
        }
        catch (MySqlException ex)
        {
            Console.WriteLine("Error: " + ex.Message);
        }
        finally
        {
            conn.Close();
        }
    }
    public static MySqlConnection Conexion()
    {
        string cadenaConexion = "Database= asp_usuarios; Data Source= localhost; Port= 3306; User Id= root; Password= 1234";
        try
        {
            MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
            return conexionBD;
        }
        catch (MySqlException ex)
        {
            Console.WriteLine("Error: " + ex.Message);
            return null;
        }
    }
}