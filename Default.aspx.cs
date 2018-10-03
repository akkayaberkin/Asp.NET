using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public static int sayac = 0;
    public void sld() {
      
        if (sayac == 1)
        { Label2.Text = "<img src='img/s6.jpg'width='500px' heigth='500px'/>";
        }

        else if (sayac == 2)
        {
            Label2.Text = "<img src='img/s7.jpg'width='500px' heigth='500px'/>";
        }
        else if (sayac == 3)
        {
            Label2.Text = "<img src='img/s8.jpg'width='500px' heigth='500px'/>";
        }
        else 
        {
            Label2.Text = "<img src='img/s9.jpg'width='500px' heigth='500px'/>";
        } }
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "<img src='img/s9.jpg'width='500px' heigth='500px'/>";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //geri
        sayac--;sld(); if (sayac==0) { sayac = 1; }
       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //ileri
        sayac++; sld(); if (sayac == 5) { sayac = 1; }
   
    }
}