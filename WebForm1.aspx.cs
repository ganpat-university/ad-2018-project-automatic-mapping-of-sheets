using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADproject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            insert();
            
        }
        void insert()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\Subjects\Sem-4\AD\AD.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into reg(enrollnment,firstname,lastname,semester,subject1,subject2,subject3) values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "', '" + TextBox6.Text + "', '" + TextBox7.Text + "' )", con);
            SqlCommand amd = new SqlCommand(" update reg set total=subject1+subject2+subject3", con);
            cmd.ExecuteNonQuery();
            amd.ExecuteNonQuery();

            con.Close();
            
        

        }
 
    }

}