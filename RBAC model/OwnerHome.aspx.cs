using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;
using System.Security.Cryptography;
using System.Data.SqlClient;
using System.Data;

namespace RBAC_model
{

    public partial class OwnerHome : System.Web.UI.Page
    {

        //connection goes here
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\RBACDB.mdf;Integrated Security=True");
        UnicodeEncoding ByteConverter = new UnicodeEncoding();
        RSACryptoServiceProvider RSA = new RSACryptoServiceProvider();
        string time = DateTime.Now.ToString();
        //string keyone;
        string fileName;
        string owner;
        int size;
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
        string aes = "asdf!@#$1234ASDF";


       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["S_Owner"] != null)
            {
                owner = Convert.ToString(Session["S_Owner"]);
                show.Text = owner;
               
            }
            if (Session["S_Owner"] == null)
            {
                Response.Redirect("~/Owner.aspx");
            }
        }
      
        protected void Button1_Click(object sender, EventArgs e)
        {


            // Add code to upload file with encryption

            byte[] file = new byte[FileUpload1.PostedFile.ContentLength];
            FileUpload1.PostedFile.InputStream.Read(file, 0, FileUpload1.PostedFile.ContentLength);
            size = FileUpload1.PostedFile.ContentLength;
            fileName = FileUpload1.PostedFile.FileName;

            // key for encryption
            byte[] Key = Encoding.UTF8.GetBytes(aes);
            try
            {
                string outputFile = Path.Combine(Server.MapPath("~/cloudfiles"), fileName);
                if (File.Exists(outputFile))
                {
                    Response.Write("<script type=\"text/javascript\">alert('File Already exists');</script>");
                }
                else
                {
                    FileStream fs = new FileStream(outputFile, FileMode.Create);
                    AesManaged rmCryp = new AesManaged();
                    CryptoStream cs = new CryptoStream(fs, rmCryp.CreateEncryptor(Key, Key), CryptoStreamMode.Write);
                    foreach (var data in file)
                    {
                        cs.WriteByte((byte)data);
                    }
                    GenRSA(aes);
                    cs.Close();
                    fs.Close();
                    show.Text = "Resource uploaded succesfully";
                 
                   // Response.Redirect(Request.RawUrl);
                }

                
            }
            catch
            {
                Response.Write("Encryption Failed! Please try again.");
            }


      
        }

        private Boolean InsertUpdateData(SqlCommand cmd)
        {

            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                return false;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }


        public void GenRSA(string key) {
            //lets take a new CSP with a new 2048 bit rsa key pair
            var csp = new RSACryptoServiceProvider(2048);
            //how to get the private key
            var privKey = csp.ExportParameters(true);
            //and the public key ...
            var pubKey = csp.ExportParameters(false);
            //converting the public key into a string representation
            string pubKeyString;
            {
                //we need some buffer
                var sw = new System.IO.StringWriter();
                //we need a serializer
                var xs = new System.Xml.Serialization.XmlSerializer(typeof(RSAParameters));
                //serialize the key into the stream
                xs.Serialize(sw, pubKey);
                //get the string from the stream
                pubKeyString = sw.ToString();
            }
            string privateKeyString;
            {
                //we need some buffer
                var pp = new System.IO.StringWriter();
                //we need a serializer
                var ps = new System.Xml.Serialization.XmlSerializer(typeof(RSAParameters));
                //serialize the key into the stream
                ps.Serialize(pp, privKey);
                //get the string from the stream
                privateKeyString = pp.ToString();
            }
            //converting it back
            {
                //get a stream from the string
                var sr = new System.IO.StringReader(pubKeyString);
                //we need a deserializer
                var xs = new System.Xml.Serialization.XmlSerializer(typeof(RSAParameters));
                //get the object back from the stream
                pubKey = (RSAParameters)xs.Deserialize(sr);
            }
            {
                //get a stream from the string
                var pr = new System.IO.StringReader(privateKeyString);
                //we need a deserializer
                var xs = new System.Xml.Serialization.XmlSerializer(typeof(RSAParameters));
                //get the object back from the stream
                privKey = (RSAParameters)xs.Deserialize(pr);
            }
            //we have a public key ... let's get a new csp and load that key
            csp = new RSACryptoServiceProvider();
            csp.ImportParameters(pubKey);

         

            //for encryption, always handle bytes...
            var bytesPlainTextData = System.Text.Encoding.Unicode.GetBytes(key);

            //apply pkcs#1.5 padding and encrypt our data 
            var bytesCypherText = csp.Encrypt(bytesPlainTextData, false);

            //we might want a string representation of our cypher text... base64 will do
            var cypherText = Convert.ToBase64String(bytesCypherText);
           // status.Text = cypherText;
            string strQuery = "insert into Resource_Role(owner,name,createdtime,createdkey,pkey,size) values (@owner, @name, @time,@data,@pkey,@size)";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@owner", SqlDbType.VarChar).Value = owner;
            cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = fileName;
            cmd.Parameters.Add("@time", SqlDbType.VarChar).Value = time;
            cmd.Parameters.Add("@data", SqlDbType.VarChar).Value = cypherText;
            cmd.Parameters.Add("@pkey", SqlDbType.VarChar).Value = privateKeyString;
            cmd.Parameters.Add("@size", SqlDbType.Int).Value = size;
            InsertUpdateData(cmd);
            /*---------------------------------------------------------------------------------------------------------------------*/
        }

        protected void out_Click(object sender, EventArgs e)
        {
             Session.Remove("S_Owner");
             Response.Redirect("~/Owner.aspx");
        }
    }
}


