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
    public partial class editBrand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "select * from brandsListbrand";
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                /**string sql = "UPDATE main SET s_name='" + TextBox1.Text + "',inst_code='" + DropDownList1.SelectedItem +
                    "',ms_oms='" + Label7.Text + "',elligiblity='" + Label12.Text + "',Board='"
                    + DropDownList5.SelectedItem + "',percentage='" + TextBox4.Text + "' WHERE elg_id = '" +
                    DropDownList4.SelectedItem + "'"**/
                string updatee = "update brandsListbrand set brandId= '" + TextBox1.Text.ToString()
                    + "', brandName = '" + TextBox2.Text.ToString()
                    + "' WHERE brandId='"+ TextBox1.Text.ToString() +"';";
                SqlCommand cmd = new SqlCommand(updatee, con);
                cmd.ExecuteNonQuery();
               // Response.Write("updated successfully");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/homeBrands.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            string delete = "delete from  brandsListbrand where brandId = '" + TextBox2.Text.ToString() + "'";
            SqlCommand cmd = new SqlCommand(delete, con);
            cmd.ExecuteNonQuery();
            Response.Write("deleted successfully");
        }
    }
}