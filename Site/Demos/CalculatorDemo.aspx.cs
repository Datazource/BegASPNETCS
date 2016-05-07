﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_CalculatorDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CalculateButton_Click(object sender, EventArgs e)
    {
        if (ValueBox1.Text.Length > 0 && ValueBox2.Text.Length > 0)
        {
            double result = 0;
            double value1 = Convert.ToDouble(ValueBox1.Text);
            double value2 = Convert.ToDouble(ValueBox2.Text);

            Calculator myCalculator = new Calculator();

            switch (OperatorList.SelectedValue)
            {
                case "+" :
                    result = myCalculator.Add(value1, value2);
                    break;
                case "-" :
                    result = myCalculator.Subtract(value1, value2);
                    break;
                case "*" :
                    result = myCalculator.Multiply(value1, value2);
                    break;
                case "/" :
                    result = myCalculator.Divide(value1, value2);
                    break;
            }

            ResultLabel.Text = result.ToString();
        }
        else
        {
            ResultLabel.Text = string.Empty;
        }
    }
}