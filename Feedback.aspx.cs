using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace applliedProject

{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string cnstring = "Data Source=desktop-cq119gr;Initial Catalog=perfumeonline;Integrated Security=True";

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
    
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open);
            string a = "insert into signup(username,password)values('" + txtEmailID.Text.ToString() +
                   "','" + TextBox1.Text.ToString() + " ')";
            SqlCommand cmd = new SqlCommand(a, con);
            cmd.ExecuteNonQuery();
            // ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' hhhh ');", true); //popup not working
          //  MessageBox.Show(this, "Registration Sucessfull");// just implememnt
           // 
            con.Close();
            bool isCaptchaValid = false;
            if (Session["CaptchaText"] != null && Session["CaptchaText"].ToString() == txtCaptchaText.Text)
            {
                isCaptchaValid = true;
            }
            if (isCaptchaValid)
            {
                lblMessage.Text = "Captcha Validation Success";
                lblMessage.ForeColor = Color.Green;
                Response.Redirect("~/WebForm1.aspx");
            }
            else
            {
                lblMessage.Text = "Security Code Is In-Correct";
                lblMessage.ForeColor = Color.Red;
            }
        }
    }
    }
