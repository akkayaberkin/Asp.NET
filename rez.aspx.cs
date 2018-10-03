using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
public partial class rez : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
         SqlConnection  baglan= new SqlConnection("Data Source=.;Initial Catalog=brkn;Integrated Security=True");
        baglan.Open();
        SqlCommand komut = new SqlCommand("insert into rezervasyon (AdSoyad,Telefon,TC) values (@AdSoyad,@Telefon,@TC)", baglan);
        komut.Parameters.Add("@AdSoyad", System.Data.SqlDbType.VarChar, 20);
        komut.Parameters["@AdSoyad"].Value = TextBox1.Text;
        komut.Parameters.Add("@Telefon", System.Data.SqlDbType.Int, 20);
        komut.Parameters["@Telefon"].Value = Convert.ToInt32( TextBox2.Text);
        komut.Parameters.Add("@TC", System.Data.SqlDbType.Int, 11);
        komut.Parameters["@TC"].Value = Convert.ToInt32(TextBox3.Text);

        komut.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        baglan.Close();

    }
}