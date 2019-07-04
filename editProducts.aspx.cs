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

            if (!IsPostBack)
            
                bindDataToGridView();
            
            
        }

        private void bindDataToGridView()
        {

            string query = "select * from [productsList]";
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
        public string cnstring = "Data Source=DESKTOP-S8A3GMM\\SANDEEPSQL;Initial Catalog=perfumeOnline;Integrated Security=True";
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
             

            string updatee = "update [productsList] set productId = '" + TextBox5.Text.ToString() +
           "', brandName = '" + DropDownList3.Text.ToString()
                + "', productName = '" + TextBox4.Text.ToString() + "', price = '" + TextBox3.Text.ToString() +
                "', quantity = '" + DropDownList2.Text.ToString() + 
                "' WHERE productId='" + HiddenField1.Value.ToString() + "';";
                SqlCommand cmd = new SqlCommand(updatee, con);
                cmd.ExecuteNonQuery();
      
            bindDataToGridView();
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            DropDownList3.Text = "";
            DropDownList2.Text = "";
            // Response.Write("updated successfully");

             
        }
       

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteItem")
            {
                int rowID = Convert.ToInt32(e.CommandArgument);
                TextBox5.Text = GridView1.Rows[rowID].Cells[0].Text;
                DropDownList3.Text = GridView1.Rows[rowID].Cells[1].Text;
                TextBox4.Text = GridView1.Rows[rowID].Cells[2].Text;
                DropDownList2.Text = GridView1.Rows[rowID].Cells[3].Text;
                TextBox3.Text = GridView1.Rows[rowID].Cells[4].Text;

                SqlConnection con = new SqlConnection(cnstring);
                con.Open();
                string delete = "delete from [productsList] where productId = '" + TextBox5.Text.ToString() + "'";
                SqlCommand cmd = new SqlCommand(delete, con);
                cmd.ExecuteNonQuery();
                Response.Write("deleted successfully");
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                DropDownList3.Text = "";
                DropDownList2.Text = "";
                bindDataToGridView();
            }

            if (e.CommandName == "EditItem")
            {
                int rowID = Convert.ToInt32(e.CommandArgument);
                TextBox5.Text = GridView1.Rows[rowID].Cells[0].Text;
                DropDownList3.Text = GridView1.Rows[rowID].Cells[1].Text;
                TextBox4.Text = GridView1.Rows[rowID].Cells[2].Text;
                DropDownList2.Text = GridView1.Rows[rowID].Cells[3].Text;
                TextBox3.Text = GridView1.Rows[rowID].Cells[4].Text;

                HiddenField1.Value = TextBox5.Text;
             
            }
        }
    }
}
