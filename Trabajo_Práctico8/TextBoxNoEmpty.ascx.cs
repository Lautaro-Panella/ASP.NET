using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TextBoxNoEmpty : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string getValorTxt() {
        return TextBox1.Text;
    }
    public void setValorTxt(string valor) {
        TextBox1.Text = valor;
    }
}