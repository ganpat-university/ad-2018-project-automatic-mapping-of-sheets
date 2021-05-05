using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADPROJECT1
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            select();
        }
        void select()
        {
            //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Documents\ADentry.mdf;Integrated Security=True;Connect Timeout=30");

            //SqlCommand cmd = new SqlCommand("select * from RegEntry", con);
            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataSet dsa = new DataSet();
            //sda.Fill(dsa);
            //GridView1.DataSource = dsa;
            //GridView1.DataBind();
        }
    }
}