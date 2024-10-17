using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OperationApp
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // Left Section: Handles single number operations
        protected void btnSubmitLeft_Click(object sender, EventArgs e)
        {
            int number = int.Parse(txtNo.Text);
            string operation = ddlOperator.SelectedValue;

            if (operation == "Sum")
            {
                int sum = 0;
                for (int i = 1; i <= number; i++)
                {
                    sum += i;
                }
                lblAnswerLeft.Text = "Answer: " + sum.ToString();
            }
            else if (operation == "Factorial")
            {
                int factorial = 1;
                for (int i = 1; i <= number; i++)
                {
                    factorial *= i;
                }
                lblAnswerLeft.Text = "Answer: " + factorial.ToString();
            }
        }

        // Right Section: Handles two number operations
        protected void btnSubmitRight_Click(object sender, EventArgs e)
        {
            int number1 = int.Parse(txtNo1.Text);
            int number2 = int.Parse(txtNo2.Text);
            string operation = ddlOperation.SelectedValue;

            switch (operation)
            {
                case "Addition":
                    lblAnswerRight.Text = "Answer: " + (number1 + number2).ToString();
                    break;
                case "Subtraction":
                    lblAnswerRight.Text = "Answer: " + (number1 - number2).ToString();
                    break;
                case "Multiplication":
                    lblAnswerRight.Text = "Answer: " + (number1 * number2).ToString();
                    break;
                case "Division":
                    lblAnswerRight.Text = number2 != 0
                        ? "Answer: " + ((double)number1 / number2).ToString("0.00")
                        : "Cannot divide by zero.";
                    break;
                case "Min":
                    lblAnswerRight.Text = "Answer: " + Math.Min(number1, number2).ToString();
                    break;
                case "Max":
                    lblAnswerRight.Text = "Answer: " + Math.Max(number1, number2).ToString();
                    break;
                case "Equals":
                    lblAnswerRight.Text = "Answer: " + (number1 == number2).ToString();
                    break;
            }
        }
    }
}