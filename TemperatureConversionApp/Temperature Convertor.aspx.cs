using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TemperatureConversionApp
{
    public partial class Temperature_Convertor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            inputTempBox.Text = "";
            outoutLabel.Text = "";
            DropList1.SelectedIndex = 0;
            DropList2.SelectedIndex = 0;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                   

            string from = DropList1.SelectedItem.ToString();
            string to = DropList2.SelectedItem.ToString();
            double inputTemp = Convert.ToDouble(inputTempBox.Text);
            double outputTemp = 0;

            if (to == "Celsius") 
            {
                if (from == "Fahrenheit") outputTemp = (inputTemp - 32) * 5 / 9;
                if (from == "Kelvin") outputTemp = inputTemp - 273.15;
                if (from == "Celsius") outputTemp = inputTemp;
                outputTemp = Math.Round(outputTemp, 2);
                outoutLabel.Text = outputTemp.ToString() + " " + "°C";
            }
            
                
            else if (to == "Fahrenheit")
            {
                if (from == "Celsius") outputTemp = (inputTemp * 9 / 5) + 32;
                if (from == "Kelvin") outputTemp = 1.8 * (inputTemp - 273.15) + 32;
                if (from == "Fahrenheit") outputTemp = inputTemp;
                outputTemp = Math.Round(outputTemp, 2);
                outoutLabel.Text = outputTemp.ToString() + " " + "°F";
            } 
            

            else 
            {
                if (from == "Celsius") outputTemp = inputTemp + 273.15;
                if (from == "Fahrenheit") outputTemp = 0.56 * (inputTemp - 32) + 273.15;
                if (from == "Kelvin") outputTemp = inputTemp;
                outputTemp = Math.Round(outputTemp, 2);
                outoutLabel.Text = outputTemp.ToString() + " " + "°K";
            }
            


        }
    }
}