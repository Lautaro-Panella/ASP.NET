using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class trabajos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void guardarSesion()
    {
        Session["periodoOcupacion"] = (desde.SelectedDate.ToString()) + " - " + (hasta.SelectedDate.ToString());
        Session["lugarTrabajo"] = lugarTrabajo.getValorTxt();
        Session["tareaDesempeniada"] = tareaDesempeniada.getValorTxt();
    }
    protected void enviar3(object sender, EventArgs e)
    {
        guardarSesion();
        if (Page.IsValid)
        {
            Response.Redirect("idioma.aspx");
        }
    }
    protected void volver2(object sender, EventArgs e)
    {
        Response.Redirect("estudios.aspx");
    }
}