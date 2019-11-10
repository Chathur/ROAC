using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RBAC_model
{
    public partial class Owner : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\RBACDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string check = "select count(*) from [Owner] where username='" + userText.Text + "'and passowrd='" + passTxt.Text + "' ";
            SqlCommand command = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Session["S_Owner"] = userText.Text;
               Response.Redirect("~/OwnerHome.aspx");
            }
            else
            {
                //Response.Redirect(Request.RawUrl);
               
                show.Text = "Invalid Username or Passowrd";
                userText.Text = "";
                passTxt.Text = "";

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RegisterOwner.aspx");
        }

        protected void passTxt_TextChanged(object sender, EventArgs e)
        {


        }
    }
}