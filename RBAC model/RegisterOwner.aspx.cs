using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RBAC_model
{
    public partial class RegisterOwner : System.Web.UI.Page
    {
        string time = DateTime.Now.ToString();
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\RBACDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string insert = "Insert into [Owner](name,address,mobile,email,username,passowrd,date) values ('" + txtName.Text + "','" + txtAddress.Text + "','" + txtMobile.Text + "','" + txtEmail.Text + "','" + txtUsername.Text
               + "','" + txtPassword.Text + "','"+time+"')";
            SqlCommand command = new SqlCommand(insert, con);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            //show.Text = "Registered succesfully";
            Response.Write("<script type=\"text/javascript\">alert('Registered Succesfully');</script>");
            txtName.Text = "";
            px.Text = "";
            txtMobile.Text = "";
            txtEmail.Text = "";
            txtAddress.Text = "";
            txtPassword.Text = "";
            txtUsername.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Owner.aspx");
        }
    }
}