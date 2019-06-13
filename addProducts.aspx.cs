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
    public partial class addProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "select * from productsList";
            SqlConnection con = new SqlConnection(cnstring1);
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
        public string cnstring1 = "Data Source=desktop-cq119gr;Initial Catalog=perfumeonline;Integrated Security=True";
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/homeProducts.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring1);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string a = "insert into productsList(productId,brandName,productName,price,quantity) values" +
                    "('" + TextBox2.Text.ToString() + "','" +
                    TextBox1.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox3.Text.ToString() + 
                    "','" + DropDownList1.Text.ToString() + "')";

                SqlCommand cmd = new SqlCommand(a, con);

                cmd.ExecuteNonQuery();

                Response.Write("Data Entered");
            }
        }
    }
}