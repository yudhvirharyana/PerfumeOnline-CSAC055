using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace applliedProject
{
    public partial class editProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "select * from productsList";
            SqlConnection con = new SqlConnection(cnstring);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
        public string cnstring = "Data Source=desktop-cq119gr;Initial Catalog=perfumeonline;Integrated Security=True";
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/homeProducts.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                
                string updatee = "update productsList set brandName= '" + DropDownList1.Text.ToString()
                    + "', productName = '" + TextBox4.Text.ToString() + "', productId = '" + TextBox2.Text.ToString() +
                    "', quantity = '" + DropDownList2.Text.ToString() + "', price = '" + TextBox3.Text.ToString()
                    + "' WHERE productId='" + TextBox2.Text.ToString() + "';";
                SqlCommand cmd = new SqlCommand(updatee, con);
                cmd.ExecuteNonQuery();
                // Response.Write("updated successfully");

            }
        }
    }
    }
