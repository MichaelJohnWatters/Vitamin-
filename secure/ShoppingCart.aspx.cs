using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Collections;
using System.Text;
/**
 * This page is used to create the processes created for the Shopping Cart page.
 */
public partial class ShoppingCart : System.Web.UI.Page
{
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

            //Createing Label and buttons which are add depending on the number of items in cart.
            Label itemLabel = new Label();
            Button remove = new Button();
            remove.Width = 80;
            remove.Text = "Remove";
            remove.ID = loop.ToString();

            //remove.Click += new EventHandler(this.remove);

            remove.Click += delegate (object sender, EventArgs e){
                this.remove(sender, e, Convert.ToInt32(remove.ID));};

            //itemLabel.CssClass = "cartInfo";

            sb.Append("<br>______________________________________<br>");

            sb.Append("Name : " + cartItem.getItemName() + "<br>");
            sb.Append("Cost : £" + cartItem.getCost() + "<br>");
            itemLabel.Text = sb.ToString();

            totalCost += cartItem.getCost();

            // add the item controls (labels) to the panel  
            this.pnlOrders.Controls.Add(itemLabel);
            this.pnlOrders.Controls.Add(remove);

        }//for

        // show final cost
        this.lblTotalCost.Text = "<br><br>Total cost : £" + totalCost;
    }

    //This method loads the users name on Startup, and Redirects the user to the homepage if they navigate to another
    //Page before going to the homepage.
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
        if (Session["CART"] == null)
        {
            Response.Redirect("~/HomePage.aspx");
        }
        displayDetails();
    }


    /**
     * This method Clears the Products saved in the Shopping cart
     * by clearing the arrayList.
     */
    protected void btnClear_Click(object sender, EventArgs e)
    {
        ArrayList al = new ArrayList();
        Session["CART"] = al;

        displayDetails();
    }

    /**
     * This method allows the user to purchase there items, by navigating them to the
     * Payment Form.
     */
    protected void btnPurchase_Click(object sender, EventArgs e)
    {
        //ArrayList al = new ArrayList();
        //Session["CART"] = al;

        displayDetails();
        Response.Redirect("~/secure/Payment.aspx");
    }
    /**
     * This method allows the user to remove an item from their shopping cart.
     * by clicking the remove button.
     */
    protected void remove(object sender, EventArgs e, int index)
    {
        ArrayList arrCart = (ArrayList)Session["CART"];
        //int totalItems = arrCart.Count;
        arrCart.RemoveAt(index);//was location
        displayDetails();
    }
}