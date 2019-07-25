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
            if (!IsPostBack)
                bindDataToGridView();
        }

        private void bindDataToGridView()
        {
            string query = "select * from [brandsListbrand]";
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

        public string cnstring = "Data Source=desktop-2s0q0js\\yudhvirsql;Initial Catalog=perfumeonline;Integrated Security=True";
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            
            string updatee = "update [brandsListbrand] set brandId= '" + TextBox1.Text.ToString()
                + "', brandName = '" + TextBox2.Text.ToString()
                + "' WHERE brandId='"+ HiddenField1.Value.ToString() +"';";
            SqlCommand cmd = new SqlCommand(updatee, con);
            cmd.ExecuteNonQuery();
            bindDataToGridView();
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/homeBrands.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // Ravneet (Info): Delete imagebutton will directly delete the row. No need for another button

            /*SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            string delete = "delete from [brandsListbrand] where brandId = '" + TextBox1.Text.ToString() + "'";
            SqlCommand cmd = new SqlCommand(delete, con);
            cmd.ExecuteNonQuery();
            Response.Write("deleted successfully");
            bindDataToGridView();*/
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteItem")
            {
                int rowID = Convert.ToInt32(e.CommandArgument);
                TextBox1.Text = GridView1.Rows[rowID].Cells[0].Text;
                TextBox2.Text = GridView1.Rows[rowID].Cells[1].Text;

                SqlConnection con = new SqlConnection(cnstring);
                con.Open();
                string delete = "delete from [brandsListbrand] where brandId = '" + TextBox1.Text.ToString() + "'";
                SqlCommand cmd = new SqlCommand(delete, con);
                cmd.ExecuteNonQuery();
                Response.Write("deleted successfully");
                bindDataToGridView();
            }

            if(e.CommandName == "EditItem")
            {
                int rowID = Convert.ToInt32(e.CommandArgument);
                TextBox1.Text = GridView1.Rows[rowID].Cells[0].Text;
                TextBox2.Text = GridView1.Rows[rowID].Cells[1].Text;
                HiddenField1.Value = TextBox1.Text;
            }
        }
    }
}