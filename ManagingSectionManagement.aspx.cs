using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBMSproject
{
    public partial class ManagingSectionManagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();

        }


        // ADD Product Button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkProduct())
            {
                Response.Write("<script>alert('Product already exists');</script>");
            }
            else
            {
                newproductenter();
            }
        }



        // To check whether product exists or not
        bool checkProduct()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Sold_product_data where product_code = '" + TextBox2.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        // to add new product Code
        void newproductenter()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Insert into Sold_product_data(Bill_no, product_code, product_type, selling_date," +
                    "selling_price, warrantyperoid, seller_name, customer_name, complaint, complaint_resolve) values(@Bill_no, @product_code," +
                    "@product_type, @selling_date, @selling_price, @warrantyperoid, @seller_name, @customer_name, @complaint, @complaint_resolve)", con);

                cmd.Parameters.AddWithValue("@Bill_no", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@product_code", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@product_type", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@selling_date", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@selling_price", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@warrantyperoid", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@seller_name", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@customer_name", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@complaint", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@complaint_resolve", TextBox10.Text.Trim());

                cmd.ExecuteNonQuery();
                cmd.Clone();
                Response.Write("<script>alert('Product Added Successfully');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "'); </script>");
            }
        }


        // Update Product Button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkProduct())
            {
                updateproduct();
            }
            else
            {
                Response.Write("<script>alert('Product Doesnot exists');</script>");
            }
        }


        // User Define function to update product
        void updateproduct()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE Sold_product_data SET Bill_no = @Bill_no,  product_type = @product_type, " +
                    "selling_date = @selling_date,selling_price = @selling_price, warrantyperoid = @warrantyperoid, " +
                    "seller_name=@seller_name, customer_name=@customer_name, complaint = @complaint , complaint_resolve = @complaint_resolve " +
                    "Where product_code ='" + TextBox2.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@Bill_no", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@product_type", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@selling_date", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@selling_price", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@warrantyperoid", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@seller_name", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@customer_name", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@complaint", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@complaint_resolve", TextBox10.Text.Trim());

                cmd.ExecuteNonQuery();
                cmd.Clone();
                Response.Write("<script>alert('Product Updated Successfully');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "'); </script>");
            }
        }


        // Delete Product Code
        void deleteProduct()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from Sold_product_data Where product_code ='" + TextBox2.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Product Deleted Successfully');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        //Delete Product button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkProduct())
            {
                deleteProduct();

            }
            else
            {
                Response.Write("<script>alert('Product does not exist');</script>");
            }
        }

        // Clear Form
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
        }
    }
}
