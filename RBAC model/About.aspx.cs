using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RBAC_model
{
    public partial class About : Page
    {

        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\RBACDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string check = "select count(*) from [admin] where username='" + username.Text + "'and password='" + password.Text + "' ";
            SqlCommand command = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Response.Redirect("~/AdminHome.aspx");
            }
        }
    }
}