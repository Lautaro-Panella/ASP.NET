using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public void EnviarDatos(object sender, EventArgs e)
    {
        rsCajaTexto.Text = cajaTexto.Text; // Inserto el texto de la caja de texto en la tabla.

        for (int i = 0; i < 2; i++) // Busco el item Option seleccionado de una lista y lo interto en la tabla.
        {
            if (combo.Items[i].Selected)
            {
                rsCombo.Text = combo.Items[i].Value;
            }
        }

        rsImg.Text = img.ImageUrl; // Inserto la Url de la imagen en la tabla.

        for (int i = 0; i < 2; i++) // Busco el item Check seleccionado de una lista y lo interto en la tabla.
        {
            if (chBox.Items[i].Selected)
            {
                rsChBox.Text = chBox.Items[i].Value;
            }
        }

        rsHiper.Text = hiper.NavigateUrl; // Inserto la Url del vínculo en la tabla.

        for (int i = 0; i < 3; i++) // Busco el item Radio seleccionado de una lista y lo inserto en la tabla.
        {
            if (radio.Items[i].Selected)
            {
                rsRadio.Text = radio.Items[i].Value;
            }
        }

        rsCampoOculto.Text = oculto.Value; // Inserto el valor del Campo Oculto en la tabla.
    }
}