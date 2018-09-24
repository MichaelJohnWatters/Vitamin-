using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/**
 * This class is used to Create the processes required for the Calorie Page. 
 */
public partial class Calorie : System.Web.UI.Page
{


    //This methods loads on Page startup, 
    protected void Page_Load(object sender, EventArgs e)
    {
        //Display the users Name.
        if (User.Identity.IsAuthenticated)
        {
            lblStatus.Text = "User: " + User.Identity.Name;
        }
        else
        {
            lblStatus.Text = "unknown user";
        }
    }

    /**
     * Method used to calculate the number of calories allowed per day.
     */
    protected void lblCalc_Click(object sender, EventArgs e)
    {
        try
        {
            double answer = (10 * Convert.ToInt32(txtWeight.Text)) + (6.25 * Convert.ToInt32(txtHeight.Text)) - 5 * Convert.ToInt32(txtAge.Text) + 200;
            if (rbMale.Checked)
            {
                answer += 200;
            }
            else
            {
                //do nothing.
            }
            answer = Convert.ToInt32(answer);
            lblKcalLeft.Text = answer.ToString();
            lblTitle.Text = "Calorie Counter";
        }
        catch (Exception ex) {
            Console.WriteLine(ex);
            lblTitle.Text = "ERROR INVALID DATA INPUT, please retry";
        }//catch

    }// lblCalc_Click
    /**
     * Method used to add and subtract the user food and exercise
     */
    protected void lblFinalCalories_Click(object sender, EventArgs e)
    {
        try {
            double answer = (10 * Convert.ToInt32(txtWeight.Text)) + (6.25 * Convert.ToInt32(txtHeight.Text)) - 5 * Convert.ToInt32(txtAge.Text) + 200;
            if (rbMale.Checked)
            {
                answer += 200;
            }
            else
            {
                //do nothing.
            }
            answer = Convert.ToInt32(answer);
            lblKcalLeft.Text = answer.ToString();
            double answer2 = (Convert.ToInt32(lblKcalLeft.Text) + Convert.ToInt32(txtExercise.Text)) - Convert.ToInt32(txtEaten.Text);
            lblKcalLeft.Text = answer2.ToString();
            lblTitle.Text = "Calorie Counter";
        }//try
        catch (Exception ex) {
            Console.WriteLine(ex);
            lblTitle.Text = "ERROR INVALID DATA INPUT, please retry";
        }//catch

    }//lblFinalCalories_Click

}//Class