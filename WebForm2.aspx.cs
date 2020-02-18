using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ADproject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Considering subject 1 as a nptel subject
            string nt = TextBox5.Text;
            
            insert();
        }
        void insert()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\Subjects\Sem-4\AD\AD.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlCommand cmd = new SqlCommand("update reg set emailid='"+ TextBox2.Text +"' where enrollnment='"+TextBox1.Text+"' ", con);
            SqlCommand amd = new SqlCommand("update reg set nptel=5 where enrollnment='"+TextBox1.Text+"' " , con);
            SqlCommand bmd = new SqlCommand("update reg set subject1=subject1+5 where enrollnment='" + TextBox1.Text + "' ", con);
            SqlCommand dmd = new SqlCommand(" update reg set total=subject1+subject2+subject3", con);
            cmd.ExecuteNonQuery();
            amd.ExecuteNonQuery();
            bmd.ExecuteNonQuery();
            dmd.ExecuteNonQuery();
            con.Close();
        }
    }
}