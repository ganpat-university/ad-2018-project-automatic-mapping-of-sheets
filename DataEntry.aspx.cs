using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADPROJECT1
{
    public partial class DataEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            insert();
        }
        void insert()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Semester 4\Automatic Mapping of Sheets\ADentry.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into RegEntry(Enrollnment, Firstname,Lastname, Semester,DBMS,DS,AEM) values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "', '" + TextBox6.Text + "', '" + TextBox7.Text + "' )", con);
            SqlCommand amd = new SqlCommand(" update RegEntry set total=DBMS+DS+AEM", con);
            cmd.ExecuteNonQuery();
            amd.ExecuteNonQuery();

            con.Close();
        }
    }
}