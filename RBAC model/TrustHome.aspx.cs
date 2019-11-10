using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RBAC_model
{
    public partial class TrustHome : System.Web.UI.Page
    {

        string drop1;
        string drop2;
        string drop3;
        string drop4;
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\RBACDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string insert = "Insert into [Roles](name,status) values ('" + txtRole.Text + "','')";
            SqlCommand command = new SqlCommand(insert, con);
            con.Open();
            command.ExecuteNonQuery();
            Response.Redirect(Request.RawUrl);
            con.Close();
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            drop1 = DropDownList1.SelectedItem.Value;
            drop2= DropDownList2.SelectedItem.Value;
            string insert = "Insert into [Resource_Role_Map](role,resource) values ('" + drop1 + "','"+ drop2+"')";
            SqlCommand command = new SqlCommand(insert, con);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            drop3 = DropDownList3.SelectedItem.Value;
            drop4 = DropDownList4.SelectedItem.Value;
            string insert = "Insert into [Role_User](rolename,username) values ('" + drop3 + "','" + drop4 + "')";
            SqlCommand command = new SqlCommand(insert, con);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
        }
    }
}