using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
/**
 * This class is used to Create the processes required for the Shop Page. 
 */
public partial class Shop : System.Web.UI.Page
{

    /**
     * This Methods add Item 1 to the Shopping Cart ArrayList.
     */
    protected void itemButton1_Click(object sender, EventArgs e)
    {
        CartItem item = new CartItem();
        item.setItemName("Nature Made Vitamin C");
        item.setCost(7.00);
        ArrayList al = (ArrayList)Session["CART"];

        al.Add(item);

        Session["CART"] = al;
        updateCartSummary();
    }

    /**
     * This method updates the Cart String used to display the contents to the screen.
     */
    private void updateCartSummary()
    {
        ArrayList al = (ArrayList)Session["CART"];
        int count = al.Count;
        lbnCart.Text = "Cart: (" + count.ToString() + ")";
    }

    //This method displays the users Name on startup, and checks if the user has visited the homepage first before
    //being allowed to use the Shop.
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

        updateCartSummary();
    }
    /**
    * This Method adds Item 2 to the Shopping Cart ArrayList.
    */
    protected void itemButton2_Click(object sender, EventArgs e)
    {
        CartItem item = new CartItem();
        item.setItemName("Nature Made, Omega 3");
        item.setCost(7.00);
        ArrayList al = (ArrayList)Session["CART"];

        al.Add(item);

        Session["CART"] = al;
        updateCartSummary();
    }
    /**
    * This Method adds Item 3 to the Shopping Cart ArrayList.
    */
    protected void itemButton3_Click(object sender, EventArgs e)
    {
        CartItem item = new CartItem();
        item.setItemName("Nu U Fish, oil Omega 3");
        item.setCost(10.00);
        ArrayList al = (ArrayList)Session["CART"];

        al.Add(item);

        Session["CART"] = al;
        updateCartSummary();
    }
    /**
    * This Method add Item 4 to the Shopping Cart ArrayList.
    */
    protected void itemButton4_Click(object sender, EventArgs e)
    {
        CartItem item = new CartItem();
        item.setItemName("Ester, Fish oil Omega 3");
        item.setCost(10.00);
        ArrayList al = (ArrayList)Session["CART"];

        al.Add(item);

        Session["CART"] = al;
        updateCartSummary();
    }
    /**
    * This Method add Item 5 to the Shopping Cart ArrayList.
     */
    protected void itemButton5_Click(object sender, EventArgs e)
    {
        CartItem item = new CartItem();
        item.setItemName("Solgad, Vitamin C");
        item.setCost(9.00);
        ArrayList al = (ArrayList)Session["CART"];

        al.Add(item);

        Session["CART"] = al;
        updateCartSummary();
    }
    /**
    * This Method add Item 6 to the Shopping Cart ArrayList.
    */
    protected void itemButton6_Click(object sender, EventArgs e)
    {
        CartItem item = new CartItem();
        item.setItemName("Nature Made, Vitamin D");
        item.setCost(15.00);
        ArrayList al = (ArrayList)Session["CART"];

        al.Add(item);

        Session["CART"] = al;
        updateCartSummary();
    }
    /**
    * This Method add Item 7 to the Shopping Cart ArrayList.
    */
    protected void itemButton7_Click(object sender, EventArgs e)
    {
        CartItem item = new CartItem();
        item.setItemName("Nature Made, Super B-Complex");
        item.setCost(14.00);
        ArrayList al = (ArrayList)Session["CART"];

        al.Add(item);

        Session["CART"] = al;
        updateCartSummary();
    }
    /**
    * This Method add Item 8 to the Shopping Cart ArrayList.
    */
    protected void itemButton8_Click(object sender, EventArgs e)
    {
        CartItem item = new CartItem();
        item.setItemName("KirkLand, Vitamin E");
        item.setCost(14.00);
        ArrayList al = (ArrayList)Session["CART"];

        al.Add(item);

        Session["CART"] = al;
        updateCartSummary();
    }
    /**
    * This Method add Item 9 to the Shopping Cart ArrayList.
    */
    protected void itemButton9_Click(object sender, EventArgs e)
    {
        CartItem item = new CartItem();
        item.setItemName("Nathans Natural, Vitamin C");
        item.setCost(19.00);
        ArrayList al = (ArrayList)Session["CART"];

        al.Add(item);

        Session["CART"] = al;
        updateCartSummary();
    }

    /**
    * This method navigates the user to the Shopping cart whenever they click on the Link button to the cart.
    */
    protected void cart_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/secure/ShoppingCart.aspx");
    }
}