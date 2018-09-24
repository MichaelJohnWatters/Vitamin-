using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
/**
 * This class is used to Create the processes required for the Blog Page. 
 */
public partial class Blog : System.Web.UI.Page
{
    //Method to display the users Name
    protected void Page_Load(object sender, EventArgs e)
    {
        loadBlog();
        if (User.Identity.IsAuthenticated)
        {
            lblStatusBlog.Text = "User: " + User.Identity.Name;
        }
        else
        {
            lblStatusBlog.Text = "unknown user";
        }

    }//Page_load

    /**
     * Method that Check if the user is Authicated and changes the blogs txt file to that will the
     * Users message  and there name and time stamp
     *
     */
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string user = "unknown";
        if (User.Identity.IsAuthenticated)
        {
            user = User.Identity.Name;
        }//if

        txtBlog.Text += user + " >> " + DateTime.UtcNow.ToShortTimeString() +
                      " >> " + txtEntry.Text + "\n";
        File.WriteAllText(Server.MapPath("~/Files/txtBlog.txt"), txtBlog.Text);


    }//btnSubmit_Click

    /**
     *This Method loads the blog and displays its contents within the text blog
     */
    protected void loadBlog()
    {
        String[] strBlog = File.ReadAllLines(Server.MapPath("~/Files/txtBlog.txt"));
        txtBlog.Text = "";

        foreach (String line in strBlog)
        {
            txtBlog.Text += line;
            txtBlog.Text += "\n";
        }//foreach

    }//LoadBlog

}//class
