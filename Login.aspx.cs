using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
/**
 * This class is used to Create the processes required for the Login Page. 
 */
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }//Page_load
    
    //This method controls Authentication of accounts..
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string user = Login1.UserName.ToUpper();
        string pwd = Login1.Password.ToUpper();

        if (user.Equals("FRED") && pwd.Equals("12345"))
        {
            FormsAuthentication.RedirectFromLoginPage(user, false);
        }
        else if (user.Equals("BOSS") && pwd.Equals("12345"))
        {
            FormsAuthentication.RedirectFromLoginPage(user, false);
            Response.Redirect("~/secureAdmin/Manager.aspx");
        }
        else if (user.Equals("MICHAEL") && pwd.Equals("12345")){
            FormsAuthentication.RedirectFromLoginPage(user, false);
        }

        else
        {
            //lblOutput.Text = "Invalid logon";

        }
    }//Login1_Authenticate

}//class