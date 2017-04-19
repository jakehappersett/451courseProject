using System;
using System.Collections.Generic;
using System.Data;
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
            DataTable dt = DataAccess.selectQuery("SELECT * FROM Products WHERE ID = " + Request.QueryString["ID"]);
            DataRow row = dt.Rows[0];
            //myCart.Insert(new CartItem(int32.Parse(id),row["NAME"].ToString()));
            // this function uses the DataTable that he creates to figure out which row
            // At 1:00:00 in the Vid is when he/she is around this part

           myCart.Insert(new CartItem(Int32.Parse(id),
            row["product_name"].ToString(),
            row["product_image"].ToString(),
            row["product_description"].ToString(),
            Double.Parse(row["product_price"].ToString()),
            1));
           
        }
    }
}