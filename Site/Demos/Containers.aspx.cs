using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Containers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = CheckBox1.Checked;
    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        Result.Text = "Your Name is " + YourName.Text;
        Result.Text += "<br/> Your Favorite Language is " + FavoriteLanguage.SelectedValue;
    }
}