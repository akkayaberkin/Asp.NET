using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class iletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void send_Click(object sender, EventArgs e)
    { 
        SqlConnection baglan = new SqlConnection("Data Source=.;Initial Catalog=brkn;Integrated Security=True");
        baglan.Open();
        SqlCommand komut = new SqlCommand("insert into iletisim (konu,ad,mail,mesaj) values (@konu,@ad,@mail,@mesaj)", baglan);
        komut.Parameters.Add("@konu", System.Data.SqlDbType.NVarChar, 20);
        komut.Parameters["@konu"].Value = TextBox1.Text;
        komut.Parameters.Add("@ad", System.Data.SqlDbType.NVarChar, 20);
        komut.Parameters["@ad"].Value = TextBoxnamesurname.Text;
        komut.Parameters.Add("@mail", System.Data.SqlDbType.NVarChar, 2);
        komut.Parameters["@mail"].Value = TextBox2.Text;
        komut.Parameters.Add("@mesaj", System.Data.SqlDbType.NVarChar, 20);
        komut.Parameters["@mesaj"].Value = TextBox3.Text;
        
            komut.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBoxnamesurname.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            baglan.Close();
        
    } 
}