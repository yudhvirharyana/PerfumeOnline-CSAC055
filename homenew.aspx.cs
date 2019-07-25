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
    public partial class homenew : System.Web.UI.Page
    {

        public string cnstring1 = "Data Source=desktop-2s0q0js\\yudhvirsql;Initial Catalog=perfumeonline;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "select * from brandDetails";
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

            string query1 = "select * from productDetails";
            SqlConnection conn = new SqlConnection(cnstring1);
            SqlCommand cmdd = new SqlCommand();
            cmdd.CommandText = query1;
            cmdd.Connection = conn;
            SqlDataAdapter daa = new SqlDataAdapter();
            daa.SelectCommand = cmdd;
            DataSet ss = new DataSet();
            daa.Fill(ss);
            GridView3.DataSource = ss;
            GridView3.DataBind();
            conn.Close();
        }
    }
}