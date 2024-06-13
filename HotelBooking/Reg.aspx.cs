using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelBooking
{
    public partial class Reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string FirstName = TextBox1.Text;
            string LastName = TextBox2.Text;
            string Username = TextBox3.Text;
            string Gender = string.Empty;
            string Password = TextBox4.Text;
            string ConfirmPassword = TextBox5.Text;
            string Email = TextBox6.Text;
            string Phone = TextBox7.Text;
            string Address = TextBox8.Text;
            string LanguagesKnown = string.Empty;
            string Country = string.Empty;
            if (DropDownList1 != null)
            {
                Country = DropDownList1.SelectedValue.ToString();
            }
            if (RadioButton1.Checked == true)
            {
                Gender = RadioButton1.Text;
            }
            else if (RadioButton2.Checked == true)
            {
                Gender = RadioButton2.Text;
            }
            if (CheckBox1.Checked == true)
            {
                LanguagesKnown = LanguagesKnown + CheckBox1.Text + ",";

            }
            if (CheckBox2.Checked == true)
            {
                LanguagesKnown = LanguagesKnown + CheckBox2.Text + ",";

            }
            if (CheckBox3.Checked == true)
            {
                LanguagesKnown = LanguagesKnown + CheckBox3.Text + ",";
            }
            //create sql connection
            SqlConnection con = new SqlConnection("data source=GAURAV\\GAURAVDB; database=Hotel;integrated security=yes");
            con.Open();
            string query = "insert into Registration values('" + FirstName + "','" + LastName + "','" + Username + "','" + Password + "','" + ConfirmPassword + "','" + Email + "','" + Phone + "','" + Address + "','" + Country + "','" + Gender + "','"+ LanguagesKnown + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('success');</script>");
            Response.Redirect("log.aspx");
        }


    }
}
