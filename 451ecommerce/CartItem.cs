using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _451ecommerce
{
    public class CartItem
    {
        public int product_id { get; set; }
        public string product_name { get; set; }
        public string product_image { get; set; }
        public string product_description { get; set; }
        public double product_price { get; set; }
        public int product_quantity { get; set; }


        public CartItem()
        {

        }

        public CartItem(int product_id, string product_name, string product_image, string product_description, double product_price, int product_quantity)
        {
            this.product_id = product_id;
            this.product_name = product_name;
            this.product_image = product_image;
            this.product_description = product_description;
            this.product_price = product_price;
            this.product_quantity = product_quantity;
        }
    }
}