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
    public partial class addBrands : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "select * from brandsListbrand";
            SqlConnection con = new SqlConnection(cnstring1);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2 .DataBind();
            con.Close();
        }
        public string cnstring1 = "Data Source=desktop-cq119gr;Initial Catalog=perfumeonline;Integrated Security=True";

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring1);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string a = "insert into brandsListbrand(brandId,brandName) values('" + TextBox1.Text.ToString() + "','" +
                    TextBox2.Text.ToString() + "')";

                SqlCommand cmd = new SqlCommand(a, con);

                cmd.ExecuteNonQuery();

                Response.Write("Data Entered");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/homeBrands.aspx");
        }
    }
}