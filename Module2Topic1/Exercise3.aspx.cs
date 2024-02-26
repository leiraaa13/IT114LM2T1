using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // DONE 3.3
                finalGrade.Text = "Submit your grade percentage to see your final grade!";
            }
            
        }



        protected void CalculateButton_Click(object sender, EventArgs e)
        {
            if (double.TryParse(percentageGrade.Text, out double percentage))
            {
                double numericalGrade;

                if (percentage < 60.00)
                {
                    numericalGrade = 5.00;
                }
                else if (percentage >= 60.00 && percentage <= 64.50)
                {
                    numericalGrade = 3.00;
                }
                else if (percentage > 64.50 && percentage <= 69.00)
                {
                    numericalGrade = 2.75;
                }
                else if (percentage > 69.00 && percentage <= 73.50)
                {
                    numericalGrade = 2.50;
                }
                else if (percentage > 73.50 && percentage <= 78.00)
                {
                    numericalGrade = 2.25;
                }
                else if (percentage > 78.00 && percentage <= 82.50)
                {
                    numericalGrade = 2.00;
                }
                else if (percentage > 82.50 && percentage <= 87.00)
                {
                    numericalGrade = 1.75;
                }
                else if (percentage > 87.00 && percentage <= 91.50)
                {
                    numericalGrade = 1.50;
                }
                else if (percentage > 91.50 && percentage <= 96.00)
                {
                    numericalGrade = 1.25;
                }
                else
                {
                    numericalGrade = 1.00;
                }

                finalGrade.Text = "Final Grade: " + numericalGrade.ToString("0.00");

                if (numericalGrade == 1.00)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Congratulations! You reached the highest score possible.');", true);
                }
            }
            else
            {
                finalGrade.Text = "Submit your grade percentage to see your final grade!";
            }
        }
    }
}