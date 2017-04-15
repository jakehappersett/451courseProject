using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _451ecommerce
{
    public partial class Product_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Product newProd = new Product();

            newProd.Name = ProductDetailsView.Rows[0].Cells[0].Text.ToString();

            Label1.Text = newProd.Name;


        }
    }
}