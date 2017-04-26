using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _451ecommerce
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (!IsPostBack)
            {
                    dl_product.DataSource = DataAccess.selectQuery("SELECT * FROM product" );
                    dl_product.DataBind();
            }
        }
    }
}