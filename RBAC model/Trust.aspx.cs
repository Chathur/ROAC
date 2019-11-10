using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RBAC_model
{
    public partial class Trust : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\RBACDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //
            string check = "select count(*) from [RoleM] where username='" + usertext.Text + "'and password='" + passwordtxt.Text + "' ";
            SqlCommand command = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Session["Role_M"] = usertext.Text;
                // Response.Write("<script type=\"text/javascript\">alert('Your Registered Succesfully');</script>");
                Response.Redirect("~/TrustHome.aspx");
            }


            //
            
        }
    }
}