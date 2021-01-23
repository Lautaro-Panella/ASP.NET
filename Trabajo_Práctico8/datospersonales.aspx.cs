using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class datospersonales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void guardarSesion() {
        Session["nombre"] = nombre.getValorTxt();
        Session["apellido"] = apellido.getValorTxt();
        Session["dni"] = dni.getValorTxt();
        Session["domicilio"] = domicilio.getValorTxt();
        Session["nacionalidad"] = nacionalidad.getNacionalidad();
        Session["sexo"] = sexo.getSexo();
        Session["fechaNac"] = fechaNac.SelectedDate.ToString();
    }

    protected void enviar1(object sender, EventArgs e)
    {
        guardarSesion();
        if (Page.IsValid) {
            Response.Redirect("estudios.aspx");
        }  
    }
}