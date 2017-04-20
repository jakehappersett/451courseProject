using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using _451ecommerce.BusinessLogicLayer;
using System.Web.Configuration;
using System.Web;


namespace _451ecommerce.DataAccessLayer
{
    public class SqlDataAccessLayer
    {
        private static readonly string _connectionString = string.Empty;

        static SqlDataAccessLayer()
        {
            _connectionString = WebConfigurationManager.ConnectionStrings["matterhorn"].ConnectionString;
            if (string.IsNullOrEmpty(_connectionString))
                throw new Exception("No connection string configured in Web.Config file");
        }

        public List<Product> ProductSelectAll()
        {
            // Create Customer Collection
            List<Product> colCustomers = new List<Product>();

            // Create Connection
            SqlConnection con = new SqlConnection(_connectionString);

            // Create Command
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT product_id,product_name,product_price,product_description,product_rating FROM product";

            //Execute command
            using (con)
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    colCustomers.Add(new Product(
                        (int)reader["product_id"],
                        (string)reader["product_name"],
                        (decimal)reader["product_price"],
                        (string)reader["product_description"],
                        (int)reader["product_rating"]));
                }
            }
            return colCustomers;
        }

        public void ProductInsert(Product newProduct)
        {
            // Create Connection
            SqlConnection con = new SqlConnection(_connectionString);

            // Create Command
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO product (product_id,product_price,product_name,product_description,product_rating) VALUES (@product_id,@product_name,@product_description,@product_rating)";

            // Add parameters
            cmd.Parameters.AddWithValue("@product_id", newProduct.product_id);
            cmd.Parameters.AddWithValue("@product_name", newProduct.product_name);
            cmd.Parameters.AddWithValue("@product_price", newProduct.product_price);
            cmd.Parameters.AddWithValue("@product_description", newProduct.product_description);
            cmd.Parameters.AddWithValue("@product_rating", newProduct.product_rating);


            // Execute command
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();

            }
        }

        public void ProductUpdate(Product productToUpdate)
        {
            // Create Connection
            SqlConnection con = new SqlConnection(_connectionString);

            // Create Command
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = " UPDATE product SET product_name=@product_name,product_price=@product_price,product_description=@product_description,product_rating=@product_rating WHERE product_id=@product_id";

            // Add Parameters
            cmd.Parameters.AddWithValue("@product_name", productToUpdate.product_name);
            cmd.Parameters.AddWithValue("@product_price", productToUpdate.product_price);
            cmd.Parameters.AddWithValue("@product_description", productToUpdate.product_description);
            cmd.Parameters.AddWithValue("@product_rating", productToUpdate.product_rating);
            cmd.Parameters.AddWithValue("@product_id", productToUpdate.product_id);

            // Execute command
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();

            }
        }


        public void ProductDelete(int product_id)
        {
            // Create connection
            SqlConnection con = new SqlConnection(_connectionString);

            // Create command
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "DELETE product WHERE product_id=@product_id";

            // Add Parameters
            cmd.Parameters.AddWithValue("@product_id", product_id);

            // Execute Command
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }


    }
}