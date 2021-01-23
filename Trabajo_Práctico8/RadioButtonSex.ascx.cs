using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string getSexo() {
        if (radioBtn1.Checked)
        {
            return radioBtn1.Text;
        }
        else
        { 
            return radioBtn2.Text;
        }
    }
    protected void custom3_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (radioBtn1.Checked || radioBtn2.Checked)
        {
            args.IsValid = true;
        }
        else 
        {
            args.IsValid = false;
        }
        
    }
}