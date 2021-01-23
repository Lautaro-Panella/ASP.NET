using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class estudios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void guardarSesion()
    {
        Session["nivelEstudio"] = nivelEstudio.SelectedValue;
        Session["titulo"] = titulo.getValorTxt();
        Session["establecimiento"] = establecimiento.getValorTxt();
    }
    protected void enviar2(object sender, EventArgs e)
    {
        guardarSesion();
        if (Page.IsValid)
        {
            Response.Redirect("trabajos.aspx");
        }
    }
    protected void volver1(object sender, EventArgs e)
    {
        Response.Redirect("datospersonales.aspx");
    }
}