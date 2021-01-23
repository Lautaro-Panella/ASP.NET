using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class idioma : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void guardarSesion()
    {
        string idiomas = "";
        if (ingles.Checked) {
            idiomas += ingles.Text + "-";
        }
        if (portugues.Checked)
        {
            idiomas += portugues.Text + "-";
        }
        if (aleman.Checked)
        {
            idiomas += aleman.Text;
        }
        Session["idiomas"] = idiomas;
        Session["nivelConocimiento"] = nivelConocimiento.SelectedValue;
    }
    protected void enviar4(object sender, EventArgs e)
    {
        guardarSesion();
        if (Page.IsValid)
        {
            Response.Redirect("resumen.aspx");
        }
    }
    protected void volver3(object sender, EventArgs e)
    {
        Response.Redirect("trabajos.aspx");
    }
}