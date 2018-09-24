using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/**
 * This page is used to create the processes created for the Payment  page.
 */
public partial class secure_Payment : System.Web.UI.Page
{

    // this Method loads the users Name on start and displays to screen.
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            lblStatus.Text = "User: " + User.Identity.Name + " you have ";
        }
        else
        {
            lblStatus.Text = "unknown user";
        }
    }//Page_Load

    /**
     * This method Redirects the user to the home page if they succesfully purchase an items.
     */
    protected void btnPayment_Click(object sender, EventArgs e)
    {
        if (txtCard.Text != "" && txtCv.Text != "")
        {
            Response.Redirect("~/secure/PaymentComplete.aspx?cardNo="+ Server.UrlEncode(txtCard.Text) + "&CvCode="+ Server.UrlEncode(txtCv.Text));

        }


    }//btnPayment_Click

}//class