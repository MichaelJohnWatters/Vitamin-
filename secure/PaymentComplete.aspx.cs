using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;
using System.Text;
/**
 * This page is used to create the processes created for the Paymeny Complete page.
 */
public partial class secure_PaymentComplete : System.Web.UI.Page
{
    //a method use to update the Cart.
    private void updateCartSummary()
    {
        ArrayList al = (ArrayList)Session["CART"];

    }
    //This method loads when the page starts up.
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
        if (Session["CART"] == null)
        {
            Response.Redirect("~/HomePage.aspx");
        }
        displayDetails();

        if (Request.QueryString["cardNo"] != null) {
            lblQueryCardNo.Text = Request.QueryString["cardNo"];
        }

        if (Request.QueryString["CvCode"] != null) {
           lblQueryCvCode.Text = Request.QueryString["CvCode"];
        }

    }//Page_Load

    //create Array to store information require for shopingcart list.
    static string[] inCart = new string[10];

    /**
     * This method displays the information stored with then Shopping cart and prints it to the screen.
     */
    private void displayDetails()
    {
        // clear the panel that may have previous items
        this.pnlOrders.Controls.Clear();
        double totalCost = 0;


        // get number of items in cart and show summary
        ArrayList arrCart = (ArrayList)Session["CART"];
        int totalItems = arrCart.Count;

        this.lblOrderSummary.Text = totalItems + " items in your cart";

        // go through each item in the cart (ArrayList) and add the details
        for (int loop = 0; loop < totalItems; loop++)
        {
            StringBuilder sb = new StringBuilder();

            CartItem cartItem = (CartItem)arrCart[loop];

            Label itemLabel = new Label();
            
            

            sb.Append("<br>______________________________________<br>");

            sb.Append("Name : " + cartItem.getItemName() + "<br>");
            sb.Append("Cost : £" + cartItem.getCost() + "<br>");
            itemLabel.Text = sb.ToString();

            totalCost += cartItem.getCost();

            // add the item controls (labels) to the panel  
            this.pnlOrders.Controls.Add(itemLabel);

        }//for

        // show final cost
        this.lblTotalCost.Text = "<br><br>Total cost : £" + totalCost;
        ArrayList al = new ArrayList();
        Session["CART"] = al;
    }
}