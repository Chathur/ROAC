using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Security.Cryptography;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.ComponentModel;

namespace RBAC_model
{
    public partial class UserHome : System.Web.UI.Page
    {
        string str = string.Empty;
        string filename;
        string encryptedtext;
        string pkey;
        UnicodeEncoding ByteConverter = new UnicodeEncoding();
        RSACryptoServiceProvider RSA = new RSACryptoServiceProvider();
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\RBACDB.mdf;Integrated Security=True");
        string finalkey;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["End_user"] != null)
            {
                
                str = Convert.ToString(Session["End_user"]);
                lbl1.Text = str;
            }
           else
            {
                Response.Redirect("~/Owner.aspx");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            filename = DropDownList1.SelectedItem.Value;
            string filePath = Path.Combine(Server.MapPath("~/cloudfiles"), filename);
            string outputfilePath= Path.Combine(Server.MapPath("~/Files"), filename);
            // key for decryption
            finalkey = GetTheKey();
            byte[] Key = Encoding.UTF8.GetBytes(finalkey);

            //UnicodeEncoding ue = new UnicodeEncoding();
           // FileStream fs = new FileStream(filePath, FileMode.Open);
            AesManaged rmCryp = new AesManaged();
            using (FileStream fs = new FileStream(filePath, FileMode.Open))
            {
                using (CryptoStream cs = new CryptoStream(fs, rmCryp.CreateDecryptor(Key, Key), CryptoStreamMode.Read))
                {
                    using (FileStream fsOut = new FileStream(outputfilePath, FileMode.Create))
                    {
                        int data;
                        while ((data = cs.ReadByte()) != -1)
                        {
                            fsOut.WriteByte((byte)data);
                        }
                    }
                }
            }
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(outputfilePath));
            Response.WriteFile(outputfilePath);
            Response.End();
            
        }
        protected string GetTheKey()
        {
            con.Open();
            SqlCommand command = new SqlCommand("select createdkey,pkey from Resource_Role where name ='" + DropDownList1.SelectedItem.Value + "'", con);
            SqlDataReader sdr = command.ExecuteReader();

            if (sdr.Read())
            {
                encryptedtext = sdr[0].ToString();
                pkey = sdr[1].ToString();


            }
            command.Dispose();
            con.Close();
            var csp = new RSACryptoServiceProvider(2048);
            var bytesCypherText = Convert.FromBase64String(encryptedtext);

            //get a stream from the string
            var pr = new System.IO.StringReader(pkey);
            //we need a deserializer
            var xs = new System.Xml.Serialization.XmlSerializer(typeof(RSAParameters));
            //get the object back from the stream
            var privKey = (RSAParameters)xs.Deserialize(pr);

            //we want to decrypt, therefore we need a csp and load our private key
            csp = new RSACryptoServiceProvider();
            csp.ImportParameters(privKey);

            //decrypt and strip pkcs#1.5 padding
            var bytesPlainTextData = csp.Decrypt(bytesCypherText, false);

            //get our original plainText back...
              string finalkey = System.Text.Encoding.Unicode.GetString(bytesPlainTextData);
              return finalkey;
           

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
           
            
            

            //
        }
        ///

        
    }
}