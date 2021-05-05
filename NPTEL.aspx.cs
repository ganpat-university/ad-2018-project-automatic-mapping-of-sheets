using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADPROJECT1
{
    public partial class NPTEL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nt = TextBox5.Text;

            insert();
        }
        void insert()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Semester 4\Automatic Mapping of Sheets\ADentry.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlCommand nmd = new SqlCommand("update RegEntry set Emailid='" + TextBox2.Text + "' where Enrollnment='" + TextBox1.Text + "';", con);
            SqlCommand amd = new SqlCommand("update RegEntry set NPTEL=5 where enrollnment='" + TextBox1.Text + "';", con);
            SqlCommand bmd = new SqlCommand("update RegEntry set DBMS=DBMS+5 where Enrollnment='" + TextBox1.Text + "';", con);
            SqlCommand dmd = new SqlCommand("update RegEntry set total=DBMS+DS+AEM", con);
            nmd.ExecuteNonQuery();
            amd.ExecuteNonQuery();
            bmd.ExecuteNonQuery();
            dmd.ExecuteNonQuery();
            con.Close();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Result.aspx");
        }
    }
}