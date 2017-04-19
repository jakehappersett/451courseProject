using System;
using System.Collections.Generic;
using System.Linq;
using _451ecommerce.DataAccessLayer;
using System.Web;

namespace _451ecommerce.BusinessLogicLayer
{
    public class Product
    {
        private int _id = 0;
        private string _name = String.Empty;
        private decimal _price = 0;
        private string _description = String.Empty;
        private int _rating = 0;

        public int product_id
        {
            get { return _id; }
        }

        public string product_name
        {
            get { return _name; }
        }

        public decimal product_price
        {
            get { return _price; }
        }


        public string product_description
        {
            get { return _description; }
        }

        public int product_rating
        {
            get { return _rating; }
        }



        public static List<Product> SelectAll()
        {
            SqlDataAccessLayer dataAccessLayer = new SqlDataAccessLayer();
            return dataAccessLayer.ProductSelectAll();
        }


        public static void Update(int product_id, string product_name, decimal product_price, string product_description, int product_rating)
        {

            Product ProductToUpdate = new Product(product_id, product_name, product_price, product_description, product_rating);
            ProductToUpdate.Save();
        }


        public static void Insert(int product_id, string product_name, decimal product_price, string product_description, int product_rating)
        {
            Product newCustomer = new Product(product_id, product_name, product_price, product_description, product_rating);
            newCustomer.Save();
        }

        public static void Delete(int customer_id)
        {

            SqlDataAccessLayer dataAccessLayer = new SqlDataAccessLayer();
            dataAccessLayer.ProductDelete(customer_id);
        }

        private void Save()
        {


            SqlDataAccessLayer dataAccessLayer = new SqlDataAccessLayer();
            if (_id > 0)
                dataAccessLayer.ProductUpdate(this);
            else
                dataAccessLayer.ProductInsert(this);
        }

        public Product(string product_name, decimal product_price, string product_description, int product_rating)
            : this(0, product_name, product_price, product_description, product_rating)
        { }


        public Product(int product_id, string product_name, decimal product_price, string product_description, int product_rating)
        {
            _id = product_id;
            _name = product_name;
            _price = product_price;
            _description = product_description;
            _rating = product_rating;
        }

    }
}