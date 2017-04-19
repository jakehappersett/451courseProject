using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _451ecommerce
{
    public class Cart
    {
        public List<CartItem> Items { get; set; }

        public Cart()
        {
            Items = new List<CartItem>();
        }

        private int ItemIndexOf(int product_id)
        {
            foreach (CartItem item in Items)
            {
                if (item.product_id == product_id)
                {
                    return Items.IndexOf(item);
                }
            }
            return -1;
        }

        public void Insert(CartItem item)
        {
            int index = ItemIndexOf(item.product_id);
            if (index == -1)
            {
                Items.Add(item);
            }
            else
            {
                Items[index].product_quantity++;
            }
        }
        
        public void Delete(int rowID)
        {
            Items.RemoveAt(rowID);
        }

        public void Update(int rowID, int product_quantity)
        {
            if (product_quantity > 0)
            {
                Items[rowID].product_quantity = product_quantity;
            }
            else
            {
                Delete(rowID);
            }
        }

        public double GrandTotal
        {
            get
            {
                if (Items == null)
                {
                    return 0;
                }
                else
                {
                    double grandTotal = 0;
                    foreach (CartItem item in Items)
                    {
                        grandTotal += item.product_quantity * item.product_price;
                    }
                    return grandTotal;
                }
            }
        }
    }
}