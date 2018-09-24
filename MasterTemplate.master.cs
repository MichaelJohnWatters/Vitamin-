using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Collections;

public partial class MasterTemplate : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HomePage.aspx");
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }

    protected void btnShoppingCart_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/secure/ShoppingCart.aspx");
    }

    protected void btnCalorie_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Calorie.aspx");
    }

    protected void btnGenerator_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Generator.aspx");
    }

    protected void btnShop_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Shop.aspx");
    }

    protected void btnLoginOut_Click(object sender, EventArgs e)
    {
        
        FormsAuthentication.SignOut();
        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "Func()", true);
        ArrayList al = new ArrayList();
        Session["CART"] = al;
        Response.Redirect("~/HomePage.aspx");
    }



    protected void btnBlog_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Blog.aspx");
    }
}
