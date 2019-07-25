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
    public static class MessageBox
    {
        public static void Show(this Page Page, String Message)
        {
            Page.ClientScript.RegisterStartupScript(
               Page.GetType(),
               "MessageBox",
               "<script language='javascript'>alert('" + Message + "');</script>"
            );
        }
    }
    public partial class loginnew : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string cnstring = "Data Source=desktop-2s0q0js\\yudhvirsql;Initial Catalog=perfumeonline;Integrated Security=True";

        protected void Unnamed2_TextChanged(object sender, EventArgs e)
        {
            

        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                ;
            }

            SqlCommand o = new SqlCommand("select * from signup where username='" + textbox1.Text + "' And password ='" + textbox2.Text + "';", con);
            //con.Open();
            SqlDataReader r = o.ExecuteReader();
            
                if(r.Read())
                {
                    Response.Redirect("~/homenew.aspx");
                    
                }
                else
                {
                if (textbox1.Text.Length == 0 || textbox2.Text.Length == 0)
                {
                    MessageBox.Show(this, "Please enter username and Password");
                }
                else
                {
                    MessageBox.Show(this, "Username and Password Is Not Correct");

                }
            }
            /**if(r.Read())
            {
                Response.Redirect("~/home.aspx");
            }
            else
            {        actuall code
               
                MessageBox.Show(this, "Username and Password Is Not Correct");
            }*/

            //string query1 = "select * from Login where username='" + textbox1.Text + "' and password='" + textbox2.Text + "'";
            //SqlCommand cmd = new SqlCommand(query1, con);
            ////cmd.ExecuteNonQuery();
            //string a = textbox1.Text;
            //string b = textbox2.Text;

           /** if(textbox1.Text.Length==0 && textbox2.Text.Length==0)
            {
                MessageBox.Show(this,"Please Enter Username And Password");
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' hhhh ');", true); popup 1

                //Response.Write("<script language=javascript>alert('Please enter username and Password.')</script>"); popup2
            }
            else
            {
     
                if(textbox1.Text.Trim() == a  && textbox2.Text.Trim() == b)
                {
                    Response.Redirect("~/WebForm1.aspx");
                }
                else
                {
                    MessageBox.Show(this, "Username Password Is Not Correct");
                }
            } **/
        }

        protected void Unnamed6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Feedback.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            string delete = "delete from  signup where username = '" + TextBox3.Text.ToString() + "'";
            SqlCommand cmd = new SqlCommand(delete, con);
            cmd.ExecuteNonQuery();
            Response.Write("deleted successfully");
        }

        
    }
}