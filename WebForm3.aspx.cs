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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            select();  
        }
        void select()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\Subjects\Sem-4\AD\AD.mdf;Integrated Security=True;Connect Timeout=30");
            
            SqlCommand cmd = new SqlCommand("select * from reg", con);


           SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet dsa = new DataSet();
            sda.Fill(dsa);
            GridView1.DataSource = dsa;
            GridView1.DataBind();
        }
    }
}