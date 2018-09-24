using System;
using System.Collections;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/**
 * This class is used to Create the processes required for the HomePage Page. 
 */
public partial class HomePage : System.Web.UI.Page
{
    //this method loads on Page startup
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Creates a new Cart arraylist if there is none already created.
            if (Session["CART"] == null)
            {
                ArrayList arrCart = new ArrayList();
                Session.Add("CART", arrCart);

            }//if
        }//if

        if (User.Identity.IsAuthenticated)
        {
            lblStatus.Text = "User: " + User.Identity.Name;
        }
        else
        {
            lblStatus.Text = "unknown user";
        }
        string line;

        //read the file and display it line by line;

        StreamReader file = new StreamReader(Server.MapPath("~/secureAdmin/Files/HomePageTextOne.txt"));
        while ((line = file.ReadLine()) != null)
        {
            lblHomeTextOne.Text += line;
        }//while
        file.Close();

        string lineTwo;

        //read the file and display it line by line;

        StreamReader file2 = new StreamReader(Server.MapPath("~/secureAdmin/Files/HomePageTextTwo.txt"));
        while ((lineTwo = file2.ReadLine()) != null)
        {
            lblHomeTextTwo.Text += lineTwo;
        }//while
        file.Close();
    }//Page_load
}//class