using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelBooking
{
    public partial class Room : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            String username = TextBox1.Text;
            string RoomType = string.Empty;
            string Amenities = string.Empty;


            if (RadioButton1.Checked == true)
            {
                RoomType = RadioButton1.Text;

            }
            else if (RadioButton2.Checked == true)
            {
                RoomType = RadioButton2.Text;
            }
            if (CheckBox1.Checked == true)
            {

                Amenities = Amenities + CheckBox1.Text + ",";
            }
            if (CheckBox2.Checked == true)
            {
                Amenities = Amenities + CheckBox2.Text;
            }

            Label4.Text = TextBox1.Text + " you are registerd successfully ";

            SqlConnection con = new SqlConnection("data source=GAURAV\\GAURAVDB; database=Hotel;integrated security=yes");
            con.Open();
            string query = "insert into Room values('" + username + "','" + RoomType + "','" + Amenities + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Roomgrid.aspx");

        }
    }
}