using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for inCartItem
/// This class creates a Cart Item that can be used with an arraylist to 
/// Create a shopping cart.
/// </summary>
public class CartItem
{

    private string itemName = null;
    private double cost = 0;

    //Constructor
    public CartItem()
    {

    }//CartItem

    //Getters and Setters
    public string getItemName()
    {
        return this.itemName;
    }//getItemName

    public void setItemName(string itemName)
    {
        this.itemName = itemName;
    }//setItemName

    public double getCost()
    {
        return this.cost;
    }//getCost

    public void setCost(double cost)
    {
        this.cost = cost;
    }//setCost

}//class