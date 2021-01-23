using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public void EnviarDatos(object sender, EventArgs e)
    {
        rsCajaTexto.InnerText = cajaTexto.Value; // Inserto el texto de la caja de texto en la tabla.

        for (int i = 0; i < 2; i++) // Busco el item Option seleccionado de una lista y lo interto en la tabla.
        {
            if (combo.Items[i].Selected)
            {
                rsCombo.InnerText = combo.Items[i].Value;
            }
        }

        rsImg.InnerHtml = img.Src; // Inserto la Url de la imagen en la tabla.

        if (chBox1.Checked) // Si un CheckBox está seleccionado lo inserto en la tabla.
        {
            rsChBox.InnerText = chBox1.Value;
        }
        else if (chBox2.Checked)
        {
            rsChBox.InnerText = chBox2.Value;
        }

        rsHiper.InnerText = hiper.HRef; // Inserto la Url del vínculo en la tabla.

        if (radio1.Checked) // Si un RadioButton está seleccionado lo inserto en la tabla.
        {
            rsRadio.InnerText = radio1.Value; 
        }
        else if (radio2.Checked)
        {
            rsRadio.InnerText = radio2.Value;
        }
        else if (radio3.Checked)
        {
            rsRadio.InnerText = radio3.Value;
        }

        rsCampoOculto.InnerText = oculto.Value; // Inserto el valor del Campo Oculto en la tabla.
    }
}