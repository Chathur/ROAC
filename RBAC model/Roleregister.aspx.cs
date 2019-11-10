using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace RBAC_model
{
    public partial class Roleregister : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\RBACDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string insert = "Insert into [RoleM](name,username,password) values ('" + name.Text + "','" + user.Text + "','" + password.Text + "')";
            SqlCommand command = new SqlCommand(insert, con);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            Response.Write("<script type=\"text/javascript\">alert(' Registered Succesfully');</script>");
        }
    }
}