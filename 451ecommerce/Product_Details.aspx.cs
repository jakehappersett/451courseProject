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
        Cart myCart;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void  btnAddToCart_Click(object sender, EventArgs e)
        {
            if (Session["myCart"] == null)
            {
                myCart = new Cart();
                Session["myCart"] = myCart;
            }
            string id = Request.QueryString["product_id"];
            myCart = (Cart)Session["myCart"];
            DataTable  
            // this function uses the DataTable that he creates to figure out which row
            // At 1:00:00 in the Vid is when he/she is around this part

           /* myCart.Insert(new CartItem(Int32.Parse(id),
            GridViewRow["product_name"].ToString(),
            GridViewRow["product_image"].ToString(),
            GridViewRow["product_description"].ToString(),
            Double.Parse(GridViewRow["product_price"].ToString()),
            1));
            */
        }
    }
}