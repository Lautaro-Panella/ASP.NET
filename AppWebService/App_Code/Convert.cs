using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descripción breve de Convert
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
// [System.Web.Script.Services.ScriptService]
public class Convert : System.Web.Services.WebService
{

    public Convert()
    {

        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
    }

    [WebMethod]
    public double ServicioDeConversion(double numero, string unidad1, string unidad2)
    {
        double resultado = 0;

        switch (unidad1)
        {
            case "km":
                resultado = numero;
                break;

            case "m":
                resultado = numero / 1000;
                break;

            case "dm":
                resultado = numero / 10000;
                break;

            case "cm":
                resultado = numero / 100000;
                break;

            case "mm":
                resultado = numero / 1000000;
                break;

            case "um":
                resultado = numero / 1000000000;
                break;
        }
        switch (unidad2)
        {
            case "km":
                break;

            case "m":
                resultado = resultado * 1000;
                break;

            case "dm":
                resultado = resultado * 10000;
                break;

            case "cm":
                resultado = resultado * 100000;
                break;

            case "mm":
                resultado = resultado * 1000000;
                break;

            case "um":
                resultado = resultado * 1000000000;
                break;
        }
        return resultado;
    }
}
