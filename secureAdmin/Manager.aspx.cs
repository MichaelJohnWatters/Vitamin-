using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/**
 * This class is used to Create the processes required for the Manager Page. 
 */
public partial class secureAdmin_Manager : System.Web.UI.Page
{

    // This method loads the user Name on Startup of the page.
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            lblStatus.Text = "User: " + User.Identity.Name;
        }
        else
        {
            lblStatus.Text = "unknown user";
        }

    }//Page_load


    /**
     * This Method Checks the first Upload box, that the user has selected a file to upload
     * If file is found, the home page text will change to that of the selected file.
     */
    protected void btnAddTextOne_Click(object sender, EventArgs e)
    {
        if (fuTextOne.HasFile)
        {
            try
            {
                String filename = "HomePageTextOne.txt";
                fuTextOne.SaveAs(Server.MapPath("~/secureAdmin/Files/") + filename);
                lblUpdated.Text = "Upload status: File uploaded!";
            }//try
            catch (Exception ex)
            {
                lblUpdated.Text = "Upload status: The file could not be uploaded." + ex;

            }//catch
        }
        else
        {
            lblUpdated.Text = "Upload status: please select a file to upload";
        }//else

    }//btnAddTextOne_Click


    /**
     * This method check if the second Upload Box, that the user has selected a file to upload
     * If file is found, the home page text will change to that of the selected file.
     */
    protected void btnAddTextTwo_Click(object sender, EventArgs e)
    {
        if(fuTextTwo.HasFile)
        {
            try
            {
                String filename = "HomePageTextTwo.txt";
                fuTextTwo.SaveAs(Server.MapPath("~/secureAdmin/Files/") + filename);
                lblUpdated.Text = "Upload status: File uploaded!";
            }//try

            catch (Exception ex)
            {
                lblUpdated.Text = "Upload status: The file could not be uploaded." + ex;

            }//catch

        }//if
        else
        {
            lblUpdated.Text = "Upload status: please select a file to upload";
        }//else

    }//btnAddTextTwo_Click

}//class