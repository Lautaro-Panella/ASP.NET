using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void convertir(object sender, EventArgs e)
    {
        ServidorWS.ConvertSoapClient sw = new ServidorWS.ConvertSoapClient();
        resultado.Text = sw.ServicioDeConversion(Convert.ToDouble(numero.Text), unidad1.SelectedValue, unidad2.SelectedValue).ToString();
    }

    protected void mostrarDetalle(object sender, EventArgs e)
    {
        detalle.Text = numero.Text + " " + unidad1.SelectedValue + " = " + resultado.Text + " " + unidad2.SelectedValue;
    }
}