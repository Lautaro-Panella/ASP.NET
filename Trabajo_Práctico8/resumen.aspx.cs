using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class resumen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        cv.InnerHtml = "Curriculum Vitae " + Convert.ToString(Session["apellido"]) + " " + Convert.ToString(Session["nombre"]);
        s1.InnerHtml = Convert.ToString(Session["nombre"]);
        s2.InnerHtml = Convert.ToString(Session["apellido"]);
        s3.InnerHtml = Convert.ToString(Session["dni"]);
        s4.InnerHtml = Convert.ToString(Session["domicilio"]);
        s5.InnerHtml = Convert.ToString(Session["nacionalidad"]);
        s6.InnerHtml = Convert.ToString(Session["sexo"]);
        s7.InnerHtml = Convert.ToString(Session["fechaNac"]);
        s8.InnerHtml = Convert.ToString(Session["nivelEstudio"]);
        s9.InnerHtml = Convert.ToString(Session["titulo"]);
        s10.InnerHtml = Convert.ToString(Session["establecimiento"]);
        s11.InnerHtml = Convert.ToString(Session["periodoOcupacion"]);
        s12.InnerHtml = Convert.ToString(Session["lugarTrabajo"]);
        s13.InnerHtml = Convert.ToString(Session["tareaDesempeniada"]);
        s14.InnerHtml = Convert.ToString(Session["idiomas"]);
        s15.InnerHtml = Convert.ToString(Session["nivelConocimiento"]);
    }
}